//
//  Groups API.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 20.12.2021.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

final class MyGroupsAPI {
    
    let baseUrl = "https://api.vk.com/method"
    let userId =  Account.shared.userID
    let accessToken = Account.shared.token
    let version = "5.131"
    
    func myGroupsRequestAlamofire(completion: @escaping([MyGroups])->()) {
    
        let path = "/groups.get"
        let url = baseUrl + path
        
        let params: [String: String] = [
                     "user_id": userId,
                     "order": "name",
                     "count": "50",
                     "fields": "description, photo_200, domain",
                     "extended": "1",
                     "access_token": accessToken,
                     "v": version
                 ]
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.data?.prettyJSON as Any)

            guard let jsonData = response.data else { return }

                    do {
                        let myGroupsContainer = try JSONDecoder().decode(MyGroupsContainer.self, from: jsonData)
                        let MyGroups = myGroupsContainer.response.items

                        completion(MyGroups)
                        
                    } catch {
                        print(error)
            }
        }
    }
}
