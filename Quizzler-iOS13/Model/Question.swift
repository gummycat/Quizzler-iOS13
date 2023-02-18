//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Michael Jones on 2/17/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
  let question: String
  let answer: Bool
  
  init(q: String, a: Bool) {
    question = q
    answer = a
  }
}
