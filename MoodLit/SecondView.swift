//
//  SecondView.swift
//  BookRec
//
//  Created by Chelsea Vanessa on 26/05/24.
//

import SwiftUI

struct SecondView: View {
    @Binding var currPage: String
    @Binding var output: String
    var body: some View {
        
        ZStack {
            Image("Background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image(systemName: "chevron.backward")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .offset(x: -360, y: -500)
                .onTapGesture {
                    currPage = "firstPage"
                }
            VStack{
                HStack{
                    Text("Your Feeling")
                        .font(.custom ("American Typewriter", fixedSize: 50))
                        .fontWeight(.medium)
                        .padding(.top, 50)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 80)
                }
                HStack{
                    Text("\(output)")
                        .font(.system(size: 50))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 80)
                }
            }
        }
        Spacer()
    }
}
