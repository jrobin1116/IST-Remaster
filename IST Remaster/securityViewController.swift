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
    
    @IBAction func buttonVideo1(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://youtu.be/1mIAb227WxY")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
    @IBAction func buttonVideo2(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"https://youtu.be/hD9m6NbRTSg")! as URL, options: [:], completionHandler: nil)
        
    }
    
    
    @IBAction func northeastButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"http://catalog.nemcc.edu/preview_program.php?catoid=7&poid=478&returnto=410")! as URL, options: [:], completionHandler: nil)
        
    }
    
    
    
    
    @IBOutlet var onButton1Press: UIButton!
    
    @IBAction func onButton1Press(_ sender: Any) {
        
        performSegue(withIdentifier: "securitySegue2", sender: self)
    }
    
 
    @IBOutlet var onButtonClick: UIButton!
    
    
    @IBAction func onButtonClick(_ sender: Any) {        performSegue(withIdentifier: "securitySegueNortheast", sender: self)
}

}

    
    

