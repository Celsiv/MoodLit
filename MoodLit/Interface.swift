//
//  Interface.swift
//  BookRec
//
//  Created by Chelsea Vanessa on 27/05/24.
//

import SwiftUI

struct Interface: View {
    @State var currPage: String = "firstPage"
    @State var output: String = ""
    
    var body: some View {
        switch currPage{
        case "firstPage":
            ContentView(currPage: $currPage, output: $output)
        case "secondPage":
            SecondView(currPage: $currPage, output: $output)
        default:
            EmptyView()
        }
    }
}

#Preview {
    Interface()
}
