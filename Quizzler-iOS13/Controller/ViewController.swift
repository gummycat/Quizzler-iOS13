//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!
  
  var quizBrain = QuizBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    updateUI()
  }
  
  @IBAction func answerButtonPressed(_ sender: UIButton) {
    let userAnswer = sender.currentTitle == "True"
    
    if quizBrain.isCorrectAnswer(userAnswer)  {
      sender.backgroundColor = UIColor.green
    } else {
      sender.backgroundColor = UIColor.red
    }
    
    quizBrain.nextQuestion()
    
    Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { Timer in
      self.updateUI()
    }
  }

  func updateUI() {
    questionLabel.text = quizBrain.currentQuestion()
    progressBar.progress = quizBrain.currentProgress()
    scoreLabel.text = "Score : \(quizBrain.getScore())"
    trueButton.backgroundColor = UIColor.clear
    falseButton.backgroundColor = UIColor.clear
  }
}

