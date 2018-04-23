//
//  certificationsViewController.swift
//  IST Remaster
//
//  Created by MyMac on 4/20/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit

class certificationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openWebsite(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://certification.comptia.org/docs/default-source/downloadablefiles/it-certification-roadmap.pdf")! as URL, options: [:], completionHandler: nil)    }

}
