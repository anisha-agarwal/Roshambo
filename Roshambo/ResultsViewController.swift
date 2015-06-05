//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by ANISHA AGARWAL on 6/4/15.
//  Copyright (c) 2015 Anisha Agarwal. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    
    var userChoice: String!
    var randomChoice: String!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Generate a random choice for the oponent
        let choices = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random() % 3)
        randomChoice = choices[randomIndex]
        
        displayResult()
    }
    
    private func displayResult() {
        
        var imageName: String
        var text: String
        var youWon: Bool = false
        let matchup = "\(userChoice) vs. \(randomChoice)"
        
        // Handle the tie
        if userChoice == randomChoice {
            resultImage.image = UIImage(named: "itsATie")
            resultText.text = "\(matchup): it's a tie!"
            return
        }
        
        // Otherwise, figure out if you won
        switch (userChoice) {
            
        case "Rock":
            youWon = randomChoice == "Scissors"
            
        case "Paper":
            youWon = randomChoice == "Rock"
            
        default: // Scissors
            youWon = randomChoice == "Paper"
        }
        
        // Create the text
        if youWon {
            text = "You Won! \(matchup)"
            imageName = "\(userChoice)-\(randomChoice)".lowercaseString
        } else {
            text = "You Lost! \(matchup)"
            imageName = "\(randomChoice)-\(userChoice)".lowercaseString
        }
        
        // Update the UI components
        resultImage.image = UIImage(named: imageName)
        resultText.text = text
    }

    
    @IBAction private func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
