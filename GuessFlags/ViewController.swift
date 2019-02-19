//
//  ViewController.swift
//  GuessFlags
//
//  Created by Sprinthub on 07/02/2019.
//  Copyright © 2019 Sprinthub Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //define our button outlets (initialize buttons in view controller
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    //create our variables
    var countries = [String]() //initialize country list array
    var score = 0 //initialize default game score of 0
    var correctAnswer = 0 //initialize default correct answer
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //load button styles
        styleButtons()
        
        //check if countries array is empty
        if countries.isEmpty {
            //populate country list array
            countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        }
        
        
        //fire function to ask user to select flag
        askQuestion()
    }
    
    
    //define function to ask for input and accept input
    func askQuestion(action: UIAlertAction! = nil){
        
        //shuffle countries array before picking and showing flags
        countries.shuffle()
        
        
        //set flag as image for each button
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        //get a correct answer from range 0-2
        correctAnswer = Int.random(in: 0...2)
        
        //set the correct answer as the tille
        title = countries[correctAnswer].uppercased()
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        //variables for building alerts and user feedback
        let mytext = "Your score is \(score)." //use string interpolation to access and show score variable
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
    //function to style all buttons
    //TODO: change to accept array of outlets and apply styling via json/xml rules
    func styleButtons(){
        
        //set border widths
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        //set border colors
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
    }


}

