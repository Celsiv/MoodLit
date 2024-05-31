//
//  ContentView.swift
//  BookRec
//
//  Created by Chelsea Vanessa on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userInput = ""
    @State private var labelprediction = ""
    @Binding var currPage: String
    @Binding var output : String
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    func analyzeButtonTapped() -> String{
        let model = try! MoodAnalysis()
        let input = MoodAnalysisInput(text: savedText)
        
        let output = try! model.prediction(input: input).label
        return "\(output)"
    }
    
    var body: some View {
        ZStack {
            Image("Background1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Text("Mood Analysis")
                    .fontWeight(.bold)
                    .font(.custom ("American Typewriter", fixedSize: 50))
                //box
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .background(.white)
                    .cornerRadius(15)
                    .padding(.all,30)
                    .overlay{
                        if textEditorText.isEmpty{
                            Text("Start typing here...")
                                .foregroundColor(.gray)
                                .opacity(0.75)
                                .offset(x: -280, y: -100)
                        }
                    }
                //next
                Button(action: {
                    savedText = textEditorText
                    output = analyzeButtonTapped()
                    currPage = "secondPage"
                }, label: {
                    Spacer()
                    Text("Analyze".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.all,30)
                })
                //munculin text dibawahnya//
                //                Text(output)
                Spacer()
            }
            
            .padding()
        }
    }
}
