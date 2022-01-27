//
//  UserFriendArray.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 13.11.2021.
//

import UIKit
import Foundation

class UserFriendArray {
    
    var userProfile = [UserFriend]()
    
    
    
init() {
    setupArray()
}

func setupArray() {
    let user1 = UserFriend (name: "Владислав", surname: "Загржеевский", imageName: PhotoArray.init(namePhotoFriend: "Владислав", isLikedPhoto: false))
    let user2 = UserFriend (name: "Selena", surname: "Gomez", imageName: PhotoArray.init(namePhotoFriend: "Selena", isLikedPhoto: false))
    let user3 = UserFriend (name: "Ed", surname: "Sheeran", imageName: PhotoArray.init(namePhotoFriend: "Ed", isLikedPhoto: false))
    let user4 = UserFriend (name: "Justin", surname: "Timberlake", imageName: PhotoArray.init(namePhotoFriend: "Justin", isLikedPhoto: false))
    let user5 = UserFriend (name: "Виктория", surname: "Дайнеко", imageName: PhotoArray.init(namePhotoFriend: "Виктория", isLikedPhoto: false))
    let user6 = UserFriend (name: "Billie", surname: "Eilish", imageName: PhotoArray.init(namePhotoFriend: "Billie", isLikedPhoto: false))
    let user7 = UserFriend (name: "Леонид", surname: "Агутин", imageName: PhotoArray.init(namePhotoFriend: "Леонид", isLikedPhoto: false))
    let user8 = UserFriend (name: "МакSим", surname: "", imageName: PhotoArray.init(namePhotoFriend: "МакSим", isLikedPhoto: false))
    let user9 = UserFriend (name: "Bruno", surname: "Mars", imageName: PhotoArray.init(namePhotoFriend: "Bruno", isLikedPhoto: false))
    let user10 = UserFriend (name: "Shakira", surname: "", imageName: PhotoArray.init(namePhotoFriend: "Shakira", isLikedPhoto: false))
    let user11 = UserFriend (name: "Lana", surname: "Del Rey", imageName: PhotoArray.init(namePhotoFriend: "Lana", isLikedPhoto: false))
    let user12 = UserFriend (name: "Нюша", surname: "", imageName: PhotoArray.init(namePhotoFriend: "Нюша", isLikedPhoto: false))
    let user13 = UserFriend (name: "Dua", surname: "Lipa", imageName: PhotoArray.init(namePhotoFriend: "Dua", isLikedPhoto: false))
    let user14 = UserFriend (name: "Ariana", surname: "Grande", imageName: PhotoArray.init(namePhotoFriend: "Ariana", isLikedPhoto: false))
    let user15 = UserFriend (name: "Halsey", surname: "", imageName: PhotoArray.init(namePhotoFriend: "Halsey", isLikedPhoto: false))
    let user16 = UserFriend (name: "Sam", surname: "Smith", imageName: PhotoArray.init(namePhotoFriend: "Sam", isLikedPhoto: false))
    
        userProfile.append(user1)
        userProfile.append(user2)
        userProfile.append(user3)
        userProfile.append(user4)
        userProfile.append(user5)
        userProfile.append(user6)
        userProfile.append(user7)
        userProfile.append(user8)
        userProfile.append(user9)
        userProfile.append(user10)
        userProfile.append(user11)
        userProfile.append(user12)
        userProfile.append(user13)
        userProfile.append(user14)
        userProfile.append(user15)
        userProfile.append(user16)
    }
}
