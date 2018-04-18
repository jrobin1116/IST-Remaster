//
//  ViewController.swift
//  IST Remaster
//
//  Created by IST on 4/18/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var menuButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    @IBAction func handleSelection(_ sender: UIButton) {
        menuButtons.forEach { (button) in
            UIView.animate(withDuration: 0.5, animations: {
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                })
        }
    }
    
    
    @IBAction func onButtonPress(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://youtu.be/YkOzV7mZCWs")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func menuTapped(_ sender: UIButton) {
       
        }
}
    


