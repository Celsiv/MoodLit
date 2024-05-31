//
//  NewView.swift
//  BookRec
//
//  Created by Chelsea Vanessa on 27/05/24.
//

import SwiftUI

struct NewView: View {
    @State var currPage = "menu"
    @State var Output: String = ""
    var body: some View {
        switch currPage{
        case "menu":
            ContentView()
        case "SecondView":
            SecondView(currPage: $currPage, output: $Output)
        default:
            EmptyView()
        }
    }
}

#Preview {
    NewView()
}
