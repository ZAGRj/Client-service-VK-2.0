//
//  GroupsNews.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 24.11.2021.
//

import UIKit
    
class GroupsNews {

    var groupsNameForPost: Group
    var textOfPostNews: String
    var imagePost: String
    var date: String
    var time: String
    var isShared = false
    var isCommented = false
    var numberOfViews: String = "0"
    var viewsOfUsers: Int = 0
    
    init(groupsNameForPost: Group, date: String, time: String, textOfPostNews: String, imagePost: String) {
        self.groupsNameForPost = groupsNameForPost
        self.textOfPostNews = textOfPostNews
        self.date = date
        self.time = time
        self.imagePost = imagePost
    }
}
