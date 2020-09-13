//
//  Scoreview.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-09-10.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import SwiftUI

struct Scoreview: View {
    
    @State private var score = ""
    @Binding var heading: String
    @State var scoreNum = 0
    
    
    var body: some View {
        TextField(heading, text: $score){
            self.validatescore()
            
        }
        .keyboardType(.numberPad)
    }
   


    func validatescore() {

    
    scoreNum = Int(score) ?? 0
    
    if (scoreNum < 200 || scoreNum > 999) {
        print("Error")
        
    }
   
}
}

struct Scoreview_Previews: PreviewProvider {
    static var previews: some View {
        Scoreview(heading: Binding.constant("test"))
    }
}

