//
//  ViewController.swift
//  Roshambo
//
//  Created by ANISHA AGARWAL on 6/4/15.
//  Copyright (c) 2015 Anisha Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressRock(sender: UIButton) {
        let resultsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("resultsViewController") as! ResultsViewController
        
        presentViewController(resultsViewController, animated: true, completion: nil)
    }
    
    @IBAction func pressPaper(sender: UIButton) {
        performSegueWithIdentifier("paper", sender: sender)
    }
    
    // MARK: Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "paper" {
            
            let resultsViewController = segue.destinationViewController as! ResultsViewController
            
        }
    }
    

}

