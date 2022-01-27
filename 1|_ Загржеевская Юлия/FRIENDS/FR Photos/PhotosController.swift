//
//  PhotosController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 09.11.2021.
//

import UIKit
import SDWebImage

class PhotosController: UICollectionViewController {

    var selectFriendAPI: Friends?

//    MARK: OVERRIDE FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 1
       }
  
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCollectionCell", for: indexPath) as? PhotosCell else {
            return UICollectionViewCell()
        }
        
        cell.albumPhotoFriendsCell.sd_setImage(with: URL.init(string: selectFriendAPI!.photoMaxOrig), completed: nil)
        
//  shadow for picture
    cell.shadowView.layer.cornerRadius = cell.albumPhotoFriendsCell.layer.cornerRadius
    cell.shadowView.clipsToBounds = false
    cell.shadowView.layer.shadowColor = UIColor.init(displayP3Red: 169, green: 165, blue: 135, alpha: 0.9).cgColor
    cell.shadowView.layer.shadowOpacity = 1
    cell.shadowView.layer.shadowOffset = CGSize.zero
    cell.shadowView.layer.shadowRadius = 4.5

        return cell
    }

//    MARK: @IBACTIONS
    
    @IBAction func likePushButton(_ sender: Any) {

    }
}
