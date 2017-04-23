//
//  ProfileTableViewCell.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/13/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var ImageBackgroundView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userProfileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ImageBackgroundView.layer.cornerRadius = ImageBackgroundView.bounds.height / 2.0
        ImageBackgroundView.layer.masksToBounds = true
        ImageBackgroundView.backgroundColor = UIColor.white
        userProfileImage.image = #imageLiteral(resourceName: "profileimage")
        userProfileImage.layer.cornerRadius = userProfileImage.bounds.height / 2.0
        userProfileImage.layer.masksToBounds = true

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }

}
