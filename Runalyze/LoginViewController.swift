//
//  LoginViewController.swift
//  Runalyze
//
//  Created by Marianela Pimienta on 4/16/17.
//  Copyright © 2017 Marianela Pimienta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    let flag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activity.alpha = 0.0
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToServer(_ sender: Any) {
        
        activity.alpha = 1.0
        activity.startAnimating()
        _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (Timer) in
            self.performSegue(withIdentifier: "toProfile", sender: self)
        }
        
        
    }
    
    
}
