//
//  ViewController.swift
//  ApplePie
//
//  Created by user2 on 22/01/24.
//

import UIKit
var listOfWords = ["buccaneer","swift","glorious","incandesent","bug","program","ios","sonoma"]
let incorrectMovesAllowed = 7
var totalWins = 0
var totalLosses = 0
var currentGame: Game!

class ViewController: UIViewController {
    @IBOutlet var imageTreeView: UIImageView!

    
    @IBOutlet var correctWordLabel: UILabel!
    
    
    @IBOutlet var scoreLabel: UILabel!
    
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
   
    func newRound(){
          let newWord = listOfWords.removeFirst()
          currentGame = Game(word: newWord, incorrectMovesRemaining:
        incorrectMovesAllowed)
        updateUI()
        }
    func updateUI(){
        scoreLabel.text = "Wins: \(totalWins), Losses:\(totalLosses)"
        
        imageTreeView.image = UIImage(named:"Tree \(currentGame.incorrectMovesRemaining)")
    }
   

}

