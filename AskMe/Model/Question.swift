//
//  Question.swift
//  AskMe
//
//  Created by Elmira on 27.03.21.
//

import Foundation

struct Question {
    var text: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
