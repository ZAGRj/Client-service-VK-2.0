//
//  SearchGroupModel.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 28.12.2021.
//

import Foundation
import RealmSwift

// MARK: - Welcome
class SearchGroupsContainer: Codable {
    let response: SearchGeoupsResponse

    init(response: SearchGeoupsResponse) {
        self.response = response
    }
}

// MARK: - Response
class SearchGeoupsResponse: Codable {
    let count: Int
    let items: [SearchGroups]

    init(count: Int, items: [SearchGroups]) {
        self.count = count
        self.items = items
    }
}

// MARK: - Item
class SearchGroups: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var itemDescription: String
    @objc dynamic var isMember: Int
    @objc dynamic var photo200: String
    @objc dynamic var name, screenName: String
//    @objc dynamic var type: TypeEnumGroups

    enum CodingKeys: String, CodingKey {
        case id
        case itemDescription = "description"
        case isMember = "is_member"
        case photo200 = "photo_200"
        case name
        case screenName = "screen_name"
//        case type
    }

//    init(id: Int, itemDescription: String, isMember: Int, photo200: String, name: String, screenName: String) {
//        self.id = id
//        self.itemDescription = itemDescription
//        self.isMember = isMember
//        self.photo200 = photo200
//        self.name = name
//        self.screenName = screenName
////        self.type = type
//    }
}

//enum TypeEnumGroups: String, Codable {
//    case group = "group"
//    case page = "page"
//}
