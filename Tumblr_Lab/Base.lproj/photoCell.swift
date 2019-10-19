//
//  photoCell.swift
//  Tumblr_Lab
//
//  Created by William Gao on 10/18/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class photoCell: UITableViewCell {
    @IBOutlet weak var thumbnail: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
