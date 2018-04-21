//
//  securityIndeedViewController.swift
//  IST Remaster
//
//  Created by MyMac on 4/21/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit
import WebKit

class securityIndeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://www.indeed.com/jobs?q=cyber+Security&l=")
        indeedWebView.loadRequest(URLRequest(url: url!))
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var indeedWebView: UIWebView!
    


}
