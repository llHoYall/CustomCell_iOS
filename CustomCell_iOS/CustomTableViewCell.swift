//
//  CustomTableViewCell.swift
//  CustomCell_iOS
//
//  Created by hoya kim on 14/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var amountLabel: UILabel!
	@IBOutlet weak var valueLabel: UILabel!
	@IBOutlet weak var imgView: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
			
			imgView.contentMode = UIViewContentMode.scaleAspectFill
			imgView.layer.cornerRadius = 50.0
			imgView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
