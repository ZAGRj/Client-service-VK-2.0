//
//  ProfileViewController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 02.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarViewCell: UICollectionView!
   
    var profilePhotoArray = [
    UIImage(named: "ProfileAvatar0"),
    UIImage(named: "ProfileAvatar1"),
    UIImage(named: "ProfileAvatar2"),
    UIImage(named: "ProfileAvatar3"),
    ]
    
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return profilePhotoArray.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = avatarViewCell.dequeueReusableCell(withReuseIdentifier: "ProfileAvatars", for: indexPath) as? ProfilePhotoCell
        cell?.avatarProfileImage.image = profilePhotoArray[indexPath.row]
        return cell!
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = avatarViewCell.frame.width
        let size2 = avatarViewCell.frame.height
        return CGSize(width: size, height: size2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
