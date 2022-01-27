//
//  MyGroupCell.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 09.11.2021.
//

import UIKit

class MyGroupCell: UITableViewCell {
    
    @IBOutlet weak var grAvatar: UIImageView!
    @IBOutlet weak var grName: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
