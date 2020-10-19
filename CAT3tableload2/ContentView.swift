//
//  ContentView.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-08-28.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import SwiftUI


let pickerView = PickerView()
let rawPW = rawPickerView()


struct ContentView: View {
    @State var level = ""
    @State var score = ""
    @State var catHeading = ["Reading","Language","Vocabulary", "Math", "Computations","Word Analysis","Spelling","Writing"]
    @State var reading = ""
    @State var language = ""
    @State var vocabulary = ""
    @State var math = ""
    
    
    var tableScore = CAT3coretbl() 
    
    var body: some View {
        NavigationView {
            Form{
                
             pickerView
             rawPW
                Section{
                    ForEach(0 ..< catHeading.count) {
                        Scoreview(heading: self.$catHeading[$0])
                    }
                }
            }
        .navigationBarTitle(Text("CAT3 Data Entry"))
        .padding()
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
