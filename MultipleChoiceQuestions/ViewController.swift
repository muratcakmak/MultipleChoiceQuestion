//
//  ViewController.swift
//  MultipleChoiceQuestions
//
//  Created by muratcakmak on 10/02/16.
//  Copyright © 2016 Murat Cakmak. All rights reserved.
//

import UIKit

struct Question {
    var question: String
    var choices = [String]()
    var answer: Int!
}



class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var choices: [UIButton]!
    
    var questions = [Question]()
    
    var correctChoice = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = [Question(question: "Who is the most beautiful girl ever?", choices: ["Irem", "Irem Az", "Elif Irem Az", "Elif Irem Az Cakmak"], answer: 3)]
        
        for question in questions{
            presentQuestion(question)
        }
        
    }

    func presentQuestion(question: Question){
        questionLabel.text = question.question
        
        for index in 0..<choices.count{
            print(index)
            choices[index].setTitle("\(question.choices[index])", forState: UIControlState.Normal)
        }
        self.correctChoice = question.answer
    }

    @IBAction func aButton(sender: AnyObject) {
        isCorrectAnswer(1, correctChoice: correctChoice)
        
    }

    @IBAction func bButton(sender: AnyObject) {
    
    }
    
    @IBAction func cButton(sender: AnyObject) {
    
    }
    
    @IBAction func dButton(sender: AnyObject) {
        isCorrectAnswer(3, correctChoice: correctChoice)
    }
    
    func isCorrectAnswer(usersChoice: Int, correctChoice:Int){
        if(usersChoice == correctChoice){
            NSLog("Well Done!")
        }else{
            NSLog("Wrong")
        }
    }
}

