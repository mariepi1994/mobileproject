//
//  WeatherTableViewCell.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/16/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var BestHot: UILabel!
    @IBOutlet weak var WorstHot: UILabel!
    @IBOutlet weak var BestWarm: UILabel!
    @IBOutlet weak var WorstWarm: UILabel!
    @IBOutlet weak var BestCold: UILabel!
    @IBOutlet weak var WorstCold: UILabel!
    
    @IBOutlet weak var HotImage: UIImageView!
    @IBOutlet weak var WarmImage: UIImageView!
    @IBOutlet weak var ColdImage: UIImageView!
    
    @IBOutlet weak var HotMain: UILabel!
    @IBOutlet weak var HotSub: UILabel!
    @IBOutlet weak var WarmMain: UILabel!
    @IBOutlet weak var WarmSub: UILabel!
    @IBOutlet weak var ColdMain: UILabel!
    @IBOutlet weak var ColdSub: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HotImage.contentMode = UIViewContentMode.scaleToFill
        HotImage.clipsToBounds = true
        
        
        WarmImage.contentMode = UIViewContentMode.scaleToFill
        WarmImage.clipsToBounds = true
        
        
        ColdImage.contentMode = UIViewContentMode.scaleToFill
        ColdImage.clipsToBounds = true
        
        //highlightHot()
    
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func highlightHot(){
        WarmImage.alpha = 0.15
        ColdImage.alpha = 0.15
    }
    func highlightWarm(){
        HotImage.alpha = 0.15
        ColdImage.alpha = 0.15
    }
    
    func highlightCold(){
        WarmImage.alpha = 0.15
        HotImage.alpha = 0.15
    }

}
