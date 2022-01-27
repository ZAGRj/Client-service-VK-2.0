//
//  NewsViewCell.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 18.11.2021.
//

import UIKit

class NewsViewCell: UITableViewCell {

    @IBOutlet weak var backgroundViewNews: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var avatarGroupNews: UIImageView!
    @IBOutlet weak var nameGroupNews: UILabel!
    @IBOutlet weak var dataPostGroup: UILabel!
    @IBOutlet weak var postTextGroupNews: UILabel!
    @IBOutlet weak var imageGroupPostNews: UIImageView!
    @IBOutlet weak var timePostNews: UILabel!
    
    @IBOutlet weak var likeShareViewPostNews: UIView!
    @IBOutlet weak var likeMode: UISegmentedControl!
    @IBOutlet weak var commentIcon: UIButton!
    @IBOutlet weak var numberOfComments: UILabel!
    @IBOutlet weak var shareIcon: UIButton!
    @IBOutlet weak var numberOfReposts: UILabel!
    @IBOutlet weak var viewIcon: UIButton!
    @IBOutlet weak var numberOfViews: UILabel!
    
    @IBOutlet weak var delimiter: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
