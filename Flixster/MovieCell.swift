//
//  MovieCell.swift
//  Flixster
//
//  Created by Soumya Sharma on 1/11/21.
//  Copyright © 2021 codepath. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell{

    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
