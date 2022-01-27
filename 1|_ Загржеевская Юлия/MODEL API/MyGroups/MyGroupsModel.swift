//
//  MyGroupsModel.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 22.12.2021.
//

import Foundation
import RealmSwift

// MARK: - Welcome
class MyGroupsContainer: Codable {
    let response: MyGroupsResponse
    
    init(response: MyGroupsResponse) {
        self.response = response
    }
}

// MARK: - Response
class MyGroupsResponse: Codable {
    let count: Int
    let items: [MyGroups]

    init(count: Int, items: [MyGroups]) {
        self.count = count
        self.items = items
    }
}

// MARK: - Item
class MyGroups: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var itemDescription: String
    @objc dynamic var photo_200: String
    @objc dynamic var name, screenName: String
    //    @objc dynamic var type: TypeEnum

    enum CodingKeys: String, CodingKey {
        case id
        case itemDescription = "description"
        case photo_200 = "photo_200"
        case name
        case screenName = "screen_name"
        //        case type
    }

//    init(id: Int, itemDescription: String, photo_200: String, name: String, screenName: String) {
//        self.id = id
//        self.itemDescription = itemDescription
//        self.photo_200 = photo_200
//        self.name = name
//        self.screenName = screenName
//        //        self.type = type
//    }
}

//enum TypeEnum: String, Codable {
//    case group = "group"
//    case page = "page"
//}
