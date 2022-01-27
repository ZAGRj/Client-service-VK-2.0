//
//  Search Group API.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 20.12.2021.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

//let baseUrl = "https://api.vk.com/method"
//let userId =  Account.shared.userID
//let accessToken = Account.shared.token
//let version = "5.131"

final class SearchGroupsAPI {
    
        let baseUrl = "https://api.vk.com/method"
        let userId =  Account.shared.userID
        let accessToken = Account.shared.token
        let version = "5.131"
    
//    static func - for parcing json
    func searchGroupsRequestAlamofire(searchText: String, completion: @escaping([SearchGroups])->()) {

        let path = "/groups.search"
        let url = baseUrl + path
        
        let params: [String: String] = [
                     "user_id": userId,
                     "q": searchText,
                     "order": "name",
                     "count": "10",
                     "sort": "0",
                     "fields": "description, photo_200_orig, domain",
                     "type": "qroup,page",
                     "access_token": accessToken,
                     "v": version
                 ]

        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.data?.prettyJSON as Any)

            guard let jsonData = response.data else { return }

                    do {
                        let SearchGroupsContainer = try JSONDecoder().decode(SearchGroupsContainer.self, from: jsonData)
                        let SearchGroups = SearchGroupsContainer.response.items

                        completion(SearchGroups)
                        
                    } catch {
                        print(error)
            }
        }
    }
}
