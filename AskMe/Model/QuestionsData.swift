//
//  QuestionsData.swift
//  AskMe
//
//  Created by Elmira on 27.03.21.
//

import Foundation

struct QuestionsData {
    
    var questionNumber = 0
    var score = 0
    
    var questions = [
        Question(q: "Какой ученый первым предположил, что Земля вращается вокруг Солнца и своей оси?", a: ["Николай Коперник", "Аристарх Самосский", "Джордано Бруно", "Галилео Галилей"], correctAnswer: "Аристарх Самосский"),
        Question(q: "Температуры на какой планете Солнечной системы выше?", a: ["Венеры, из-за парникового эффекта", "Земли, благодаря деятельности человека", "Марса, т.к. он не имеет атмосферы", "Меркурия,т.к. он расположен ближе всего к Солнцу"], correctAnswer: "Венеры, из-за парникового эффекта"),
        Question(q: "Самая большая планета Солнечной системы?", a: ["Земля", "Юпитер", "Марс", "Сатурн"], correctAnswer: "Юпитер"),
        Question(q: "Как называется черная дыра в центре нашей галактики?", a: ["Водолей B", "Козерог С", "Скорпион D", "Стрелец А"], correctAnswer: "Стрелец А"),
        Question(q: "Что такое горизонт событий?", a: ["Ближайшие планы по освоению космоса человечеством", "Граница Вселенной, за которой не существует объектов", "Границы черной дыры, за пределы которой не м ожет вырваться никакой объект или излучение", "Граница видимой с Земли части космоса"], correctAnswer: "Границы черной дыры, за пределы которой не м ожет вырваться никакой объект или излучение"),
        Question(q: "Какая звезда находится ближе всего к Земле?", a: ["Солнце", "Процион", "Проксима Центавра", "Сириус"], correctAnswer: "Солнце"),
        Question(q: "Где находится Море Изобилия?", a: ["На Венере", "В созвездии Большой Пес", "На Луне", "На Марсе"], correctAnswer: "На Луне"),
        Question(q: "На какой планете бушует вечный шторм?", a: ["На Юпитере", "На Венере", "На Сатурне", "На Плутоне"], correctAnswer: "На Юпитере"),
        Question(q: "Как называтся самая яркая звезда ночного неба?", a: ["Вега", "Полярная звезда", "Бетельгейзе", "Сириус"], correctAnswer: "Сириус"),
        Question(q: "В каком из этих созвездий находится одна из крупнейших известных звезд Бетельгейзе?", a: ["Орион", "Малая медведица", "Большой пес", "Стрелец"], correctAnswer: "Орион"),
        Question(q: "Какая из этих планет не имеет колец?", a: ["Cатурн", "Уран", "Нептун", "Меркурий"], correctAnswer: "Меркурий"),
        Question(q: "Сколько спутников у Марса?", a: ["4", "3", "2", "1"], correctAnswer: "2"),
        Question(q: "Где расположен пояс астероидов?", a: ["Между Марсом и Юпитером", "Между Солнцем и Меркурием", "Между Нептуном и Ураном", "Между Юпитером и Сатурном"], correctAnswer: "Между Марсом и Юпитером"),
        Question(q: "На какой из этих планет нет атмосферы?", a: ["Земля", "Марс", "Луна", "Меркурий"], correctAnswer: "Меркурий"),
        Question(q: "Как называется галактика, в которой находится единственная стопроцентно обитаемая планета?", a: ["Большое Магелланово Облако", "Млечный путь", "Большая медведица", "Андромеда"], correctAnswer: "Млечный путь")
    ]
    
    func getQuestionText() -> String {
        return questions[questionNumber].text
    }
    
    func getQuestionAnswer() -> [String]{
        return questions[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(questions.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == questions[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getCorrectAnswer() -> String{
        return questions[questionNumber].correctAnswer
    }
    
}
