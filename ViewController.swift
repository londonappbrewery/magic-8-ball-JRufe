//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jerry Rufe on 8/19/19.
//  Copyright © 2019 Jerry Rufe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    
//Initial loading
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    @IBOutlet weak var ImageView: UIImageView!
    //Change answer with button press
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    //Change answer with shake gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    //Function to generate new answers
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

