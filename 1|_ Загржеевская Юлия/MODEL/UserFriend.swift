//
//  UserFriend.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 13.11.2021.
//

import UIKit
import Foundation

class UserFriend {

    var name: String
    var imageName: PhotoArray
    var surname: String
    
    init (name: String, surname: String, imageName: PhotoArray) {
        self.name = name
        self.imageName = imageName
        self.surname = surname
    }
}

    extension UserFriend: Comparable {
    static func == (lhs: UserFriend, rhs: UserFriend) -> Bool {
        return lhs.name == rhs.name
    }
    
    static func < (lhs: UserFriend, rhs: UserFriend) -> Bool {
        return lhs.name < rhs.name
    }
}
