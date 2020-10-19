//
//  levelPickerView.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-08-28.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import SwiftUI

struct PickerView : View {
    
    let levelPickerData = ["CAT11", "CAT12","CAT13", "CAT14","CAT15", "CAT16","CAT17", "CAT18","CAT19", "CAT20"]

    @State private var levelIndex = 0
    
    var body: some View {
            Picker(selection: $levelIndex, label: Text("Select the CAT3 Level")) {
                ForEach(0 ..< levelPickerData.count) {
                    Text(self.levelPickerData[$0]).tag($0)
                }
            }
           
            
        }
    }
    





struct levelPickerView_Previews: PreviewProvider {
    static var previews: some View {
       PickerView()
    }
}
