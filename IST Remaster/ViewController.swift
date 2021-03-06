//
//  ViewController.swift
//  IST Remaster
//
//  Created by IST on 4/18/18.
//  Copyright © 2018 Matthew Windham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //Cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    let winningCombinations = [[0, 1, 2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var gameIsActive = true

    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func action(_ sender: Any)
    {
        
        if (gameState[(sender as AnyObject).tag-1] == 0 && gameIsActive == true)
        {
            
            gameState[(sender as AnyObject).tag-1] = activePlayer
            
            if (activePlayer == 1)
            {
                (sender as AnyObject).setImage(UIImage(named: "X Icon.png"), for: UIControlState())
                activePlayer = 2
            }
            else
            {
                (sender as AnyObject).setImage(UIImage(named: "O Icon.png"), for: UIControlState())
                activePlayer = 1
            }
            
        }
        
        for combination in winningCombinations
        {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                gameIsActive = false
                if gameState[combination[0]] == 1
                {
                    
                    label.text = "X's Have Won"
                }
                else
                {
                    
                    label.text = "O's Have Won"
                }
                
                playAgainButton.isHidden = false
                label.isHidden = false
                
            }
            
        }
        
        var count = 1
        
        if gameIsActive == true
        {
            for i in gameState{
                count = i*count
            }
            if count != 0 {
                label.text = "It Was A Draw"
                label.isHidden = false
                playAgainButton.isHidden = false
            }
        }
        
    }
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: Any)
    {
        gameState = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
        }
    }
    
    
    @IBOutlet var menuButtons: [UIButton]!
    override func viewDidLoad()
    {

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
	//Esther's Learn More! Button
	@IBAction func LearnMore(_ sender: Any) {
		UIApplication.shared.open(URL(string: "https://crew.co/how-to-build-an-online-business/developer-vs-designer/")! as URL, options: [:], completionHandler: nil)
	}
	// Esther's "A Day in the Life" video
	@IBAction func Watch(_ sender: Any) {
		UIApplication.shared.open(URL(string: "https://youtu.be/vt79JcPfZQA")! as URL, options: [:], completionHandler: nil)
	}
	// Esther's List of Classes Button
	@IBAction func ClassList(_ sender: Any) {
		UIApplication.shared.open(URL(string: "http://catalog.nemcc.edu/preview_program.php?catoid=7&poid=484&returnto=410")! as URL, options: [:], completionHandler: nil)
	}
	// Esther's Indeed Search Button
	@IBAction func CheckJobs(_ sender: Any) {
		UIApplication.shared.open(URL(string: "https://www.indeed.com/q-Ios-Developer-jobs.html")! as URL, options: [:], completionHandler: nil)
	}
	
    // Code for NEMCC Apply button on Home Page
    
    @IBAction func nemccApplyButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.nemcc.edu/admissions/future_students/apply-now/")! as URL, options: [:], completionHandler: nil)
        
    }
}
    




