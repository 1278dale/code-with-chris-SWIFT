//
//  ViewController.swift
//  War
//
//  Created by Dale Stevens on 12/03/2015.
//  Copyright (c) 2015 Dale Stevens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomise a number for the first image view
        var firstRandomNumber = arc4random_uniform(13) + 1
        
        //Construct a string with the random number
        var firstCardString:String = String(format: "card%i", firstRandomNumber)
        
        //set the first card image view to the asset corresponding to the randomised number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        //Construct a string with the random number
        
        var secondCardString: String = String(format: "card%i", secondRandomNumber)
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
    }

}

