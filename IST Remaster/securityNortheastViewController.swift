//
//  securityNortheastViewController.swift
//  IST Remaster
//
//  Created by MyMac on 4/21/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit

class securityNortheastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://catalog.nemcc.edu/preview_program.php?catoid=7&poid=478&returnto=410")
        northeastWebView.loadRequest(URLRequest(url: url!))
    }    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var northeastWebView: UIWebView!
    
    
    
}
