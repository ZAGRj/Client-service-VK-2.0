//
//  AvatarFriends.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 20.12.2021.
//

import UIKit
import Foundation
import Alamofire


final class AvatarFriends {
    
        let baseUrl = "https://api.vk.com/method"
        let userId =  Account.shared.userID
        let accessToken = Account.shared.token
        let version = "5.131"
    
    func friendsAvatarRequestAlamofire() {
        
        let path = "/photos.getAll"
        let url = baseUrl + path
        
        let params: [String: String] = [
                     "owner_id": userId,
                     "count": "1",
                     "no_service_albums": "0",
                     "access_token": accessToken,
                     "v": version
                 ]

        AF.request(url, method: .get, parameters: params).responseJSON {
            response in
//            print(response.result)
            print(response.value as Any)
            print(response.request as Any)
            
        }
    }
}
