//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var chosenAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            chosenAnswer = true
        } else if sender.tag == 2 {
            chosenAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Wynik: \(score)"
        
        progressLabel.text = "Pytanie \(questionNumber + 1) z 13"
        
//        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
        progressWidth.constant = (CGFloat(view.frame.size.width) / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
        nextQuestion()
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
        }
        else {
            let alert = UIAlertController(title: "Congratulazioni!", message: "Zakończyłeś quiz. Twój wynik to \(score) na 13 punktów. Czy chcesz zacząć jeszcze raz?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }

    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == chosenAnswer {
            print("Correct")
            score = score + 1
            updateUI()
        } else {
            print("Wrong")
        }
        
    }
    
    
    func startOver() {
       questionNumber = 0
        score = 0
        updateUI()
    }
    

    
}
