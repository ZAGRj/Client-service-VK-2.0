//
//  SearchGroupCell.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 09.11.2021.
//

import UIKit

class SearchGroupCell: UITableViewCell {

    @IBOutlet weak var searchGroupAvatar: UIImageView!
    @IBOutlet weak var searchGroupName: UILabel!
    @IBOutlet weak var AddGroupButtom: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
}
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
