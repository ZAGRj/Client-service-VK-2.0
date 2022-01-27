//
//  Reqwest to VK.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 20.12.2021.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

final class FriendsAPI {
    
        let baseUrl = "https://api.vk.com/method"
        let userId =  Account.shared.userID
        let accessToken = Account.shared.token
        let version = "5.131"
    
    func friendsRequestAlamofire(completion: @escaping([Friends])->()) {
         
        let path = "/friends.get"
        let url = baseUrl + path
        
        let params: [String: String] = [
                     "user_id": userId,
                     "order": "name",
                     "count": "200",
                     "fields": "surname, photo_max_orig, city",
                     "access_token": accessToken,
                     "v": version
                 ]

        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.data?.prettyJSON as Any)

            guard let jsonData = response.data else { return }

                    do {
                        let friendsContainer = try JSONDecoder().decode(FriendsContainer.self, from: jsonData)
                        let friends = friendsContainer.response.items

                        completion(friends)
                        
                    } catch {
                        print(error)
            }
        }
    }
}
