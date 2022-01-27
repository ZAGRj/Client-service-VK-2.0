//
//  MyFriendsCell.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 09.11.2021.
//

import UIKit

class MyFriendsCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var surnnameFriend: UILabel!
    @IBOutlet weak var shadowAvatar: UIView!
    @IBOutlet weak var gradientColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
