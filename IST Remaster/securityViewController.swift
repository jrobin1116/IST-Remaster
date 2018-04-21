//
//  securityViewController.swift
//  IST Remaster
//
//  Created by MyMac on 4/20/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit



class securityViewController: UIViewController {

    @IBOutlet var webView1: UIWebView!
    
    
    @IBOutlet var webView2: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webView1.loadHTMLString("<iframe width=\"\(webView1.frame.width)\" height=\"\(webView1.frame.height)\" src=\"https://www.youtube.com/embed/1mIAb227WxY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", baseURL: nil)
        
        webView2.loadHTMLString("<iframe width=\"\(webView2.frame.width)\" height=\"\(webView2.frame.height)\" src=\"https://www.youtube.com/embed/hD9m6NbRTSg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet var onButton1Press: UIButton!
    
    @IBAction func onButton1Press(_ sender: Any) {
        
        performSegue(withIdentifier: "securitySegue2", sender: self)
    }
    
 
    @IBOutlet var onButtonClick: UIButton!
    
    
    @IBAction func onButtonClick(_ sender: Any) {        performSegue(withIdentifier: "securitySegueNortheast", sender: self)
}

}

    
    

