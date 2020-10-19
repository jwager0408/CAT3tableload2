//
//  Scoreview.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-09-10.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import SwiftUI

struct Scoreview: View {
    @ObservedObject var scoreVM = ScoreViewModel()
    @State private var score = ""
    @Binding var heading: String
    @State var scoreNum = 0
    
    
    var body: some View {
        EntryField(placeHolder: heading, prompt: scoreVM.validScorePrompt, field: $scoreVM.score)
    }
}
    
   

struct Scoreview_Previews: PreviewProvider {
    static var previews: some View {
        Scoreview(heading: Binding.constant("test"))
    }
}

struct EntryField: View {
    var placeHolder: String
    var prompt: String
    @Binding var field: String
    var isSecure:Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if isSecure {
                    SecureField(placeHolder, text: $field).autocapitalization(.none)
                } else {
                    
                    TextField(placeHolder, text: $field).autocapitalization(.none)
                        .keyboardType(.decimalPad)
                }
            }
            .padding(8)
            .background(Color(UIColor.secondarySystemBackground))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
            Text(prompt)
                .fixedSize(horizontal: false, vertical: true)
                .font(.caption)
        }
    }
}

