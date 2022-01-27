//
//  GroupArray.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 13.11.2021.
//

import UIKit
import Foundation

class GroupArray {

    var groups = [Group]()
    
        
    init() {
        setupArray()
    }
    
    func setupArray() {
    let group1 = Group (name: "UFC", imageName: "UFC")
    let group2 = Group (name: "Наука и Техника", imageName: "Наука и Техника")
    let group3 = Group (name: "DANKEST MEMS", imageName: "DANKEST MEMS")
    let group4 = Group (name: "Ужасы | Фильмы ужасов", imageName: "Ужасы | Фильмы ужасов")
    let group5 = Group (name: "Just Story", imageName: "Just Story")
    let group6 = Group (name: "Студия маникюра", imageName: "Pilki")
  
        groups.append(group1)
        groups.append(group2)
        groups.append(group3)
        groups.append(group4)
        groups.append(group5)
        groups.append(group6)
    }
}
