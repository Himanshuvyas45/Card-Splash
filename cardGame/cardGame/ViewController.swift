//
//  ViewController.swift
//  cardGame
//
//  Created by admin on 30/04/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PlayerCard: UIImageView!
    
    @IBOutlet weak var CPUCard: UIImageView!
    
    @IBOutlet weak var PlayerScore: UILabel!
    
    
    @IBOutlet weak var CPUScore: UILabel!
    
  var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let PlayerNumber = arc4random_uniform(13) + 2
        PlayerCard.image = UIImage(named: "card" + String(PlayerNumber) )
        
        let CPUNumber = arc4random_uniform(13) + 2
        CPUCard.image = UIImage(named: "card" + String(CPUNumber))
        
        
        if PlayerNumber > CPUNumber {
         playerScore += 1
    PlayerScore.text = String(playerScore)
        }
            else if CPUNumber > PlayerNumber {
                cpuScore += 1
                CPUScore.text = String(cpuScore)
                
            }
        
        
    }
    
}


