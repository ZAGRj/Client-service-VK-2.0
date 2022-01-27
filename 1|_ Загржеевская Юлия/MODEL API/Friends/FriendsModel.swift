//
//  FriendsModel.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 21.12.2021.
//

import Foundation
import RealmSwift

// MARK: - Welcome
class FriendsContainer: Codable {
    let response: FriendsResponse

    init(response: FriendsResponse) {
        self.response = response
    }
}

// MARK: - Response
class FriendsResponse: Codable {
    let count: Int
    let items: [Friends]

    init(count: Int, items: [Friends]) {
        self.count = count
        self.items = items
    }
}

// MARK: - Item
class Friends: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var photoMaxOrig: String
    @objc dynamic var lastName, trackCode: String
    @objc dynamic var firstName: String
    @objc dynamic var deactivated: String?
    //    @objc dynamic var canAccessClosed: Bool?
    //    @objc dynamic var city: City?
    //    @objc dynamic var isClosed: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case photoMaxOrig = "photo_max_orig"
        case lastName = "last_name"
        case trackCode = "track_code"
        case firstName = "first_name"
        case deactivated
        //        case canAccessClosed = "can_access_closed"
        //        case city
        //        case isClosed = "is_closed"
    }

    
//    init( id: Int, photoMaxOrig: String, lastName: String, trackCode: String, firstName: String, deactivated: String?) {
//        self.id = id
//        self.photoMaxOrig = photoMaxOrig
//        self.lastName = lastName
//        self.trackCode = trackCode
//        self.firstName = firstName
//        self.deactivated = deactivated
//        //        self.canAccessClosed = canAccessClosed
//        //        self.city = city
//        //        self.isClosed = isClosed
//    }
}

//// MARK: - City
//class City: Codable {
//    let id: Int
//    let title: Title
//
//    init(id: Int, title: Title) {
//        self.id = id
//        self.title = title
//    }
//}

//enum Title: String, Codable {
//    case москва = "Москва"
//    case санктПетербург = "Санкт-Петербург"
//}

extension Friends: Comparable {
static func == (lhs: Friends, rhs: Friends) -> Bool {
    return lhs.firstName == rhs.firstName
    }
static func < (lhs: Friends, rhs: Friends) -> Bool {
    return lhs.firstName < rhs.firstName
    }
}
