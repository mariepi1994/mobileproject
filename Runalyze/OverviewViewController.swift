//
//  OverviewViewController.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/22/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let dateArray:[String] = [ "04/06/13", "04/29/13", "05/13/13", "06/02/13", "08/23/13", "09/01/13", "09/18/13", "10/14/13", "12/28/13"]
    let paceArray:[String] = [ "2.40", "3.30", "2.67","2.50","2.40","3.00","3.27", "3.39", "3.30"]
    let weatherArray:[Int] = [1,2,3,2,2,1,2,3,1,2]
    let timeArray:[Int] = [2,1,3,1,2,1,1,3,2,1]
    let elevationArray:[Int] = [3,1,1,1,2,2,2,3,1,1]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Date         |     Pace (m/secs)"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:RunTableViewCell = tableView.dequeueReusableCell(withIdentifier: "run") as! RunTableViewCell
        cell.runLabel.text = dateArray[indexPath.row] + "   |     " + paceArray[indexPath.row]
        
        if (weatherArray[indexPath.row] == 1) {
            cell.weatherImager.image = UIImage(named: "hot2")
        } else if (weatherArray[indexPath.row] == 2) {
            cell.weatherImager.image = UIImage(named: "warm")
        } else if (weatherArray[indexPath.row] == 3) {
            cell.weatherImager.image = UIImage(named: "cold")
        }
        
        if (timeArray[indexPath.row] == 1) {
            cell.timeLabel.image = UIImage(named: "morning2")
        } else if (timeArray[indexPath.row] == 2) {
            cell.timeLabel.image = UIImage(named: "afternoon")
        } else if (timeArray[indexPath.row] == 3) {
            cell.timeLabel.image = UIImage(named: "night")
        }
        
        if (elevationArray[indexPath.row] == 1) {
            cell.elevationLabel.image = UIImage(named: "sealevel")
        } else if (elevationArray[indexPath.row] == 2) {
            cell.elevationLabel.image = UIImage(named: "landlevel")
        } else if (elevationArray[indexPath.row] == 3){
            cell.elevationLabel.image = UIImage(named: "mountainlevel")
        }
        
        return cell
        
    }
    
    

}
