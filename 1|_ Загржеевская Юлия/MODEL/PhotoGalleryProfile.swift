//
//  PhotoGalleryProfile.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 07.12.2021.
//

import UIKit
import Foundation

class PhotoGalleryProfile {

    var gallery = [UIImage]()
    
    init() {
        setUpGallery()
    }
    
    func setUpGallery() {
        for number in 0...14 {
            let photo = UIImage(named: "Profile\(number)")!
            gallery.append(photo)
        }
    }
}
