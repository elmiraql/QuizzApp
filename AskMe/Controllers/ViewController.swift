//
//  ViewController.swift
//  AskMe
//
//  Created by Elmira on 26.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    var questionData = QuestionsData()
    
    @IBOutlet weak var imageIndicator: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var answersCounter: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = questionData.checkAnswer(userAnswer: userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor(named: "LightColor")
            imageIndicator.image = UIImage(named: "happy")
        } else {
            let correctAnswer = questionData.getCorrectAnswer()
            for button in buttons {
                if button.currentTitle == correctAnswer {
                    button.backgroundColor = UIColor(named: "LightColor")
                }
            }
            sender.backgroundColor = UIColor(named: "RedColor")
            imageIndicator.image = UIImage(named: "sad")
        }
        questionData.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = questionData.getQuestionText()
        progressView.progress = questionData.getProgress()
        answersCounter.text = "\(questionData.getScore())/15"
        imageIndicator.image = UIImage(named: "face")
        
        let answers = questionData.getQuestionAnswer()
        var counter = 0
        
        for button in buttons {
            button.backgroundColor = UIColor(named: "ButtonColor")
            button.layer.cornerRadius = 10
            button.setTitle(answers[counter], for: .normal)
            counter += 1
        }
    }
    
}


