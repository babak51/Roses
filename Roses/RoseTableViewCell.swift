//
//  RoseTableViewCell.swift
//  Roses
//
//  Created by Mohammad Amiraslani on 10/18/17.
//  Copyright © 2017 Babak. All rights reserved.
//

import UIKit

class RoseTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var colorLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
