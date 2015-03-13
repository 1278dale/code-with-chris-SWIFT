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
    var cardNamesArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
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
        var firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        //Construct a string with the random number
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        //set the first card image view to the asset corresponding to the randomised number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        //Construct a string with the random number
        
        var secondCardString: String = self.cardNamesArray[secondRandomNumber]
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
    }

}

