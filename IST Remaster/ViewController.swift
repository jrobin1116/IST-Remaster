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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        menuButtons.forEach { (button) in
            UIView.animate(withDuration: 0.5, animations: {
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                })
        }
    }
    
    @IBAction func menuTapped(_ sender: UIButton) {
    }
}

