//
//  quiz.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 19/5/24.
//

import SwiftUI

struct quiz: View {
    @State private var firstQuestionAnswered = false
    @State private var secondQuestionAnswered = false
    @State private var thirdQuestionAnswered = false

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // First Question
            if !firstQuestionAnswered {
                questionView(questionText: "Do you feel happy today?", imageName: "Happy", yesAction: {
                    self.firstQuestionAnswered = true
                }, noAction: {
                    self.firstQuestionAnswered = true
                })
            }
                
            // Second Question
            if firstQuestionAnswered && !secondQuestionAnswered {
                questionView(questionText: "Are you a dog person", imageName: "Dog", yesAction: {
                    self.secondQuestionAnswered = true
                }, noAction: {
                    self.secondQuestionAnswered = true
                })
            }
                
            // Third Question
            if firstQuestionAnswered && secondQuestionAnswered && !thirdQuestionAnswered {
                questionView(questionText: "Do you think ducks should have grapes?", imageName: "Duck", yesAction: {
                    self.thirdQuestionAnswered = true
                    dismiss()
                }, noAction: {
                    self.thirdQuestionAnswered = true
                    dismiss()
                })
            }
            
            // Previous Button
            Button(action: {
                // Resetting the last answered question
                if self.thirdQuestionAnswered {
                    self.thirdQuestionAnswered = false
                } else if self.secondQuestionAnswered {
                    self.secondQuestionAnswered = false
                } else if self.firstQuestionAnswered {
                    self.firstQuestionAnswered = false
                }
            }) {
                if firstQuestionAnswered == true && thirdQuestionAnswered == false{
                    Text("Previous")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.top, 20)
                    }
                }
            }
            .padding()
        }
        
        private func questionView(questionText: String, imageName: String, yesAction: @escaping () -> Void, noAction: @escaping () -> Void) -> some View {
            VStack {
                Text("Question")
                    .italic()
                    .font(.system(size: 37))
                    .bold()
                Text(questionText)
                    .font(.system(size: 21))
                    .padding(.bottom, 20)
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 248)
                HStack {
                    Button(action: yesAction) {
                        Text("Yes")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    Button(action: noAction) {
                        Text("No")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
            }
        }
}

#Preview {
    quiz()
}
