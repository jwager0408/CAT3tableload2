//
//  ContentView.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-08-28.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import SwiftUI


let pickerView = PickerView()


struct ContentView: View {
    var body: some View {
        NavigationView {
            Form{
             pickerView
                Section{
                    Text("Number Correct")
                }
                Section{
                    Text("Reading")
                    Text("Math")
                    Text("Vocabulary")
                }
            }
        .navigationBarTitle(Text("CAT3 Data Entry"))
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
