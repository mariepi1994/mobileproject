//
//  ViewController.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/13/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var tableView: UITableView!
    let ProfileColor = #colorLiteral(red: 0.4998707175, green: 0.7019998431, blue: 0.9146463275, alpha: 1)
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if(indexPath.section == 0){
            return 160.5
        }
        else if(indexPath.section == 1){
            return 164.5
        }
        else if (indexPath.section == 2){
            return 161
        }
        else{
            return 60.0
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if(section == 1){
            return 3
        }
        else{
            return 1
        }
        

    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UITableViewHeaderFooterView()
        
        let insideView = UIView()
        view.backgroundView = insideView
        if(section == 0){
            insideView.backgroundColor = ProfileColor
        
        } else{
            insideView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
        
        return view
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        if(indexPath.section == 0){
            let cell:ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: "profile") as! ProfileTableViewCell
            cell.userNameLabel.text = "Marie P."
            cell.backgroundColor = ProfileColor
            return cell
        }
        else if(indexPath.section == 1 && indexPath.row == 0){
            let cell:WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: "weather") as! WeatherTableViewCell
            cell.HotMain.text = "Hot"
            cell.HotSub.text = ">90"
            cell.WarmMain.text = "Warm"
            cell.WarmSub.text = "89-65"
            cell.ColdMain.text = "Cold"
            cell.ColdSub.text = "<65"
            cell.HotImage.image = UIImage(named: "hot2")
            cell.WarmImage.image = UIImage(named: "warm")
            cell.ColdImage.image = UIImage(named: "cold")
            cell.BestHot.text = "Best Pace: \(1)"
            cell.WorstHot.text = "Worst Pace: \(1)"
            cell.BestWarm.text = "Best Pace: \(1)"
            cell.WorstWarm.text = "Worst Pace: \(1)"
            cell.BestCold.text = "Best Pace: \(1)"
            cell.WorstCold.text = "Worst Pace: \(1)"
            
            return cell
        }
        else if(indexPath.section == 1 && indexPath.row == 1){
            let cell:WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: "weather") as! WeatherTableViewCell
            cell.HotMain.text = "Morning"
            cell.HotSub.text = "8:00am"
            cell.WarmMain.text = "Afternoon"
            cell.WarmSub.text = "3:00pm"
            cell.ColdMain.text = "Night"
            cell.ColdSub.text = "8:00pm"
            cell.HotImage.image = UIImage(named: "morning2")
            cell.WarmImage.image = UIImage(named: "afternoon")
            cell.ColdImage.image = UIImage(named: "night")
            cell.BestHot.text = "Best Pace: \(1)"
            cell.WorstHot.text = "Worst Pace: \(1)"
            cell.BestWarm.text = "Best Pace: \(1)"
            cell.WorstWarm.text = "Worst Pace: \(1)"
            cell.BestCold.text = "Best Pace: \(1)"
            cell.WorstCold.text = "Worst Pace: \(1)"
            
            return cell
        }
        
        else if(indexPath.section == 1 && indexPath.row == 2){
            let cell:WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: "weather") as! WeatherTableViewCell
            cell.HotMain.text = "Low"
            cell.HotSub.text = "Sea level"
            cell.WarmMain.text = "Medium"
            cell.WarmSub.text = "Land"
            cell.ColdMain.text = "High"
            cell.ColdSub.text = "Hills"
            cell.HotImage.image = UIImage(named: "sealevel")
            cell.WarmImage.image = UIImage(named: "landlevel")
            cell.ColdImage.image = UIImage(named: "mountainlevel")
            cell.BestHot.text = "Best Pace: \(1)"
            cell.WorstHot.text = "Worst Pace: \(1)"
            cell.BestWarm.text = "Best Pace: \(1)"
            cell.WorstWarm.text = "Worst Pace: \(1)"
            cell.BestCold.text = "Best Pace: \(1)"
            cell.WorstCold.text = "Worst Pace: \(1)"
            
            return cell
        }
            
        else if (indexPath.section == 2) {
            let cell:WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: "weather") as! WeatherTableViewCell
            cell.HotMain.text = "Weather"
            cell.HotSub.text = " "
            cell.WarmMain.text = "Time of Day"
            cell.WarmSub.text = " "
            cell.ColdMain.text = "Elevation"
            cell.ColdSub.text = " "
            cell.HotImage.image = UIImage(named: "warm")
            cell.WarmImage.image = UIImage(named: "morning2")
            cell.ColdImage.image = UIImage(named: "sealevel")
            cell.BestHot.text = "Warm"
            cell.WorstHot.text = " "
            cell.BestWarm.text = "Morning"
            cell.WorstWarm.text = " "
            cell.BestCold.text = "Sea Level"
            cell.WorstCold.text = " "
            
            return cell
        }

        
        else{
            let cell = UITableViewCell()
            cell.textLabel?.text = "TJ is cute"
            return cell
        }
  
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return " "
        } else if (section == 1) {
            return "Running Statistics"
        } else if (section == 2) {
            return "Suggested Running conditions"
        }
        else {
            return " "
        }
    }
    
    
    
}


