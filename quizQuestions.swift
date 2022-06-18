//
//  quizQuestions.swift
//  quiz app
//
//  Created by Katelyn Kang Jia Xuan on 16/6/22.
//

import Foundation

struct QuizQuestion {
    
    var title: String
    
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    
    var correctOption: Int
}

var questionsArray = [QuizQuestion(title: "question 1",
                                   option1: "option 1",
                                   option2: "correct option",
                                   option3: "other option",
                                   option4: "incorrect option",
                                   correctOption: 2),
                      QuizQuestion(title: "question 2",
                                   option1: "option 1",
                                   option2: "incorrect option",
                                   option3: "correct option",
                                   option4: "other option",
                                   correctOption: 3),
                      QuizQuestion(title: "question 3",
                                   option1: "option 2",
                                   option2: "incorrect option",
                                   option3: "correct option",
                                   option4: "other option",
                                   correctOption: 3),
                      QuizQuestion(title: "question 4",
                                   option1: "option 5",
                                   option2: "incorrect option",
                                   option3: "other option",
                                   option4: "correct option",
                                   correctOption: 4),
                      QuizQuestion(title: "question 5",
                                   option1: "correct option",
                                   option2: "incorrect option",
                                   option3: "option number 10",
                                   option4: "other random option",
                                   correctOption: 1),
]
