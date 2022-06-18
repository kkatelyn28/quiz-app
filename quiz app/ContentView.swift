//
//  ContentView.swift
//  quiz app
//
//  Created by Katelyn Kang Jia Xuan on 16/6/22.
//

import SwiftUI

struct ContentView: View {
    
    fileprivate func QuizButton(_ label: String, color: Color) -> some View {
        return Text(label)
            .frame(width: 120, height: 50)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(20)
            
    }
    
    @State var isAlertShown = false
    @State var questionIndex = 0
    @State var isCorrect = false
    @State var score = 0
    @State var isSheetShown = false
    @State var amIPassing = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan, .white], startPoint: .top, endPoint: .bottom)
            VStack {
                Text(questionsArray[questionIndex].title)
                    .padding()
                    .font(.largeTitle)
                Text("your score is \(score)/ \(questionsArray.count) ")
                HStack {
                    Button {
                        print("A")
                        whenButtonIsPressed(optionNumber: 1)
                    } label: {
                        QuizButton(questionsArray[questionIndex].option1, color: .red)
                    }
                    Button {
                        print("B")
                        whenButtonIsPressed(optionNumber: 2)
                    } label: {
                        QuizButton(questionsArray[questionIndex].option2, color: .blue)
                    }
                }
                HStack {
                    Button {
                        print("C")
                        whenButtonIsPressed(optionNumber: 3)
                    } label: {
                        QuizButton(questionsArray[questionIndex].option3, color: .yellow)
                    }
                    Button {
                        print("D")
                        whenButtonIsPressed(optionNumber: 4)
                    } label: {
                        QuizButton(questionsArray[questionIndex].option4, color: .green)
                    }
                    
                }
            }
        }
        .sheet(isPresented: $isSheetShown) {
            SheetView(isPassing: amIPassing)
        }
    }
    func whenButtonIsPressed(optionNumber: Int) {
        if questionIndex == questionsArray.count - 1 {
            if score >= questionsArray.count/2 {
                amIPassing = true
            }
            
            questionIndex = 0
            isSheetShown = true
            
            
        } else {
            questionIndex += 1
        }
        
        if questionsArray[questionIndex].correctOption == optionNumber {
            print("correct!")
            score += 1
            isCorrect = true
        } else {
            print("wrong!!")
            isCorrect = false
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
