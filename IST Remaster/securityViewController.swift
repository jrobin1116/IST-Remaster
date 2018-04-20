//
//  securityViewController.swift
//  IST Remaster
//
//  Created by MyMac on 4/20/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit

class securityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var onButton1Press: UIButton!
    
    @IBAction func onButton1Press(_ sender: Any) {
        
        performSegue(withIdentifier: "securitySegue2", sender: self)
    }
    
}
