//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Michael Jones on 2/17/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
  let quiz = [
    Question(q: "A slug's blood is green.", a: true),
    Question(q: "Approximately one quarter of human bones are in the feet.", a: true),
    Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: true),
    Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: true),
    Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: false),
    Question(q: "It is illegal to pee in the Ocean in Portugal.", a: true),
    Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
    Question(q: "Google was originally called 'Backrub'.", a: true),
    Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: true),
    Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: false),
    Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: false),
    Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: true)
  ]
  
  var score = 0
  var questionNumber = 0
  
  mutating func isCorrectAnswer(_ userAnswer: Bool) -> Bool {
    let correct = userAnswer == quiz[questionNumber].answer
    
    if correct { score += 1 }
    
    return correct
  }
  
  func currentQuestion() -> String {
    return quiz[questionNumber].question
  }
  
  func currentProgress() -> Float {
      return (Float) (questionNumber + 1) / (Float) (quiz.count)
  }
  
  func getScore() -> Int {
    return score
  }
  
  mutating func nextQuestion() {
    if (questionNumber < quiz.count - 1) {
      questionNumber += 1
    } else {
      questionNumber = 0
      score = 0
    }
  }
}
