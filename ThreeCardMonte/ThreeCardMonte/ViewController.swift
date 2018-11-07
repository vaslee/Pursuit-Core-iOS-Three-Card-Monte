//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    @IBOutlet weak var firstCard: UIButton!
    
    @IBOutlet weak var midCard: UIButton!
    
    @IBOutlet weak var lastCard: UIButton!
    
    @IBOutlet weak var newGame: UIButton!
    
    @IBOutlet weak var message: UILabel!
    
    var cardArray = ["threeCard", "kingCard", "threeCard"]
    var isHidden = false
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
        cardArray = cardArray.shuffled()
        
        
  }

    
   
    
    @IBAction func game(_ sender: UIButton) {
        
//        var gameRuns:(image: String, name: String)
        switch  sender.tag {
        case 0:
        

            firstCard.setImage(UIImage (named: cardArray[0]), for: .normal)
            
            if cardArray[0] == "kingCard" {
               message.text = "WIN 😝"
            }else{
                if cardArray[1] == "kingCard" {
                    message.text = "Loss.."
                    midCard.setImage(UIImage (named: "kingCard"), for: .normal)
                }
                if cardArray[2] == "kingCard" {
                    message.text = "Loss.."
                    lastCard.setImage(UIImage (named: "kingCard"), for: .normal)
                }
        }
            
        case 1:
            midCard.setImage(UIImage (named: cardArray[1]), for: .normal)
            
            if cardArray[1] == "kingCard" {
                message.text = "WIN 😝"
            } else {
                if cardArray[0] == "kingCard" {
                    message.text = "Loss..."
                    firstCard.setImage(UIImage (named: "kingCard"), for: .normal)
                }
                if cardArray[2] == "kingCard" {
                    message.text = "Loss..."
                    lastCard.setImage(UIImage (named:"kingCard"), for: .normal)
                    
                }
            }
        case 2 :
             lastCard.setImage(UIImage (named: cardArray[2]), for: .normal)
            
             if cardArray[2] == "kingCard" {
                message.text = "WIN 😝"
             } else {
                if cardArray[0] == "kingCard" {
                    message.text = "Loss..."
                    firstCard.setImage(UIImage (named: "kingCard"), for: .normal)
                }
                if cardArray[1] == "kingCard" {
                    message.text = "Loss..."
                    midCard.setImage(UIImage (named:"kingCard"), for: .normal)
                    
                }
            }
        default:
            print("invalid tag")
        }

        firstCard.isEnabled = false
        midCard.isEnabled = false
        lastCard.isEnabled = false
}
    
    
    @IBAction func startGame(_ sender: UIButton) {
        firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
       
        midCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        
        lastCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        message.text = "Pick One"
        
        switch sender.tag {
        case 0:
            firstCard.isEnabled = true
            midCard.isEnabled = true
            lastCard.isEnabled = true
        case 1:
            firstCard.isEnabled = true
            midCard.isEnabled = true
            lastCard.isEnabled = true
        case 2:
            firstCard.isEnabled = true
            midCard.isEnabled = true
            lastCard.isEnabled = true
        default:
           print("invalid tag")
        
        }
        
        
        
    }
        

    
    
}







// switch  sender.tag {
//case 0:
//firstCard.setImage(UIImage.init(named: cardArray[0]), for: .normal)
//
//case 1:
//midCard.setImage(UIImage.init(named: cardArray[1]), for: .normal)
//case 2 :
//lastCard.setImage(UIImage.init(named: cardArray[2]), for: .normal)
//default:
//print("invalid tag")
//}
