//
//  ProfileCollectionViewController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 03.12.2021.
//

import UIKit

//private let reuseIdentifier = "Cell"

class ProfileCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

var photosGallery = PhotoGalleryProfile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
   }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photosGallery.gallery.count
       }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfilePhotos", for: indexPath) as? ProfilePhotosCell else {
            return UICollectionViewCell()
        }
        
        cell.profilePhotos.image = photosGallery.gallery[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (self.view.frame.width-6)/3
        return CGSize(width: size, height: size)
        
    }
}


