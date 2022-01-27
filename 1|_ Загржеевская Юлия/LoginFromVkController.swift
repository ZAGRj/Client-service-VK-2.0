//
//  LoginFromVkController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 18.12.2021.
//

import UIKit
import WebKit

class LoginFromVkController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webViewVk: WKWebView! {
        
        didSet {
            webViewVk.navigationDelegate = self
               }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorizeToVK()
    }

    func authorizeToVK() {
        
        var urlComponents = URLComponents()
            urlComponents.scheme = "https"
            urlComponents.host = "oauth.vk.com"
            urlComponents.path = "/authorize"
            urlComponents.queryItems = [
                URLQueryItem(name: "client_id", value: "7822904"),
                URLQueryItem(name: "display", value: "mobile"),
                URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
                URLQueryItem(name: "scope", value: "262150"),
                URLQueryItem(name: "response_type", value: "token"),
                URLQueryItem(name: "revoke", value: "1"),
                URLQueryItem(name: "v", value: "5.68")
            ]

            let request = URLRequest(url: urlComponents.url!)

        webViewVk.load(request)
}
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {

         guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {

             print(navigationResponse.response.url)
             decisionHandler(.allow)
             return
         }
        
        let params = fragment
                       .components(separatedBy: "&")
                       .map { $0.components(separatedBy: "=") }
                       .reduce([String: String]()) { result, param in
                                       var dict = result //буфер
                                       let key = param[0]
                                       let value = param[1]
                                       dict[key] = value
                                       return dict
                               }

           guard let token = params["access_token"], let userId = params["user_id"] else { return }

           Account.shared.token = token
           Account.shared.userID = userId

           performSegue(withIdentifier: "vkLoginSegue", sender: nil)

           print(url)

           decisionHandler(.cancel)

       }
}
