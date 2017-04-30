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
        JSONDictionary = convertToDictionary(text: getJSON())!
        print(JSONDictionary)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBOutlet weak var tableView: UITableView!
    let ProfileColor = #colorLiteral(red: 0.4998707175, green: 0.7019998431, blue: 0.9146463275, alpha: 1)
    var JSONDictionary:Dictionary<String, Int>!
    
    func getJSON() -> String{
        return "{\"short\": 35, \"high_elev\": 3, \"sun\": 26, \"rain\": 16, \"cluster\": 2, \"hot\": 24, \"long\": 7,\"cold\": 1, \"low_elev\": 39, \"mod\": 17, \"morning\":27,  \"evening\":10,  \"night\":7}"
    }
    
    func convertToDictionary(text: String) -> [String: Int]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Int]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    func getBestTimeofDay() -> [String]{
        
        
        if((JSONDictionary["morning"]! >= JSONDictionary["evening"]!)  && (JSONDictionary["morning"]! >= JSONDictionary["night"]!)){
             return ["Morning", "morning2"]
        }
        else if((JSONDictionary["evening"]! >= JSONDictionary["morning"]!)  && (JSONDictionary["evening"]! >= JSONDictionary["night"]!)){
            return ["Afternoon", "afternoon"]

        }
        else{
            return ["Night", "night"]
            
        }

        
    
    }
    
    func getBestElevation() -> [String]{
        
        
        if((JSONDictionary["low_elev"]! > JSONDictionary["high_elev"]!)){
            return ["High", "mountainlevel"]
        }
        else{
            return ["Low", "sealevel"]
        }
            
        
        
    }
    
    func getBestTemperature() -> [String]{
        
        
        if((JSONDictionary["hot"]! >= JSONDictionary["mod"]!)  && (JSONDictionary["hot"]! >= JSONDictionary["cold"]!)){
            return ["Hot", "hot2"]
        }
        else if((JSONDictionary["mod"]! >= JSONDictionary["hot"]!)  && (JSONDictionary["mod"]! >= JSONDictionary["cold"]!)){
            return ["War", "warm"]
            
        }
        else{
            return ["Cold", "cold"]
            
        }
        
        
    }
    
    
    
    
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
            cell.userNameLabel.text = "Jane Doe"
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
            cell.BestHot.text = "Best Pace: \(2.8)"
            cell.WorstHot.text = "Worst Pace: \(2.0)"
            cell.BestWarm.text = "Best Pace: \(3.13)"
            cell.WorstWarm.text = "Worst Pace: \(3.06)"
            cell.BestCold.text = "Best Pace: \(3.14)"
            cell.WorstCold.text = "Worst Pace: \(2.78)"
            
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
            cell.BestHot.text = "Best Pace: \(3.1)"
            cell.WorstHot.text = "Worst Pace: \(2.5)"
            cell.BestWarm.text = "Best Pace: \(2.5)"
            cell.WorstWarm.text = "Worst Pace: \(2.1)"
            cell.BestCold.text = "Best Pace: \(2.9)"
            cell.WorstCold.text = "Worst Pace: \(2.7)"
            
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
            cell.HotImage.image = UIImage(named: getBestTemperature()[1])
            cell.WarmImage.image = UIImage(named: getBestTimeofDay()[1])
            cell.ColdImage.image = UIImage(named: getBestElevation()[1])
            cell.BestHot.text = getBestTemperature()[0]
            cell.WorstHot.text = " "
            cell.BestWarm.text = getBestTimeofDay()[0]
            cell.WorstWarm.text = " "
            cell.BestCold.text = getBestElevation()[0]
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


