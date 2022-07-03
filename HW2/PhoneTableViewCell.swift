//
//  PhoneTableViewCell.swift
//  HW2
//
//  Created by Тимур Хайруллин on 03.07.2022.
//

import UIKit

class PhoneTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
