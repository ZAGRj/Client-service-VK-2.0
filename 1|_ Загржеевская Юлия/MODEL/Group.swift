//
//  Group.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 13.11.2021.
//

import UIKit
import Foundation

class Group {

    var name: String
    var imageName: String
    
    init (name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
    
    extension Group: Comparable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.name == rhs.name
    }

    static func < (lhs: Group, rhs: Group) -> Bool {
        return lhs.name == rhs.name
    }
}
