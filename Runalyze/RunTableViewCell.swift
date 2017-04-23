//
//  RunTableViewCell.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/22/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class RunTableViewCell: UITableViewCell {
    

    @IBOutlet weak var weatherImager: UIImageView!
    @IBOutlet weak var runLabel: UILabel!
    @IBOutlet weak var timeLabel: UIImageView!
    
    @IBOutlet weak var elevationLabel: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
