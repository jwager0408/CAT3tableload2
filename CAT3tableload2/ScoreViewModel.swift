//
//  ScoreViewModel.swift
//  CAT3tableload2
//
//  Created by John Wager on 2020-10-18.
//  Copyright © 2020 Wager and Associates. All rights reserved.
//

import Foundation

class ScoreViewModel: ObservableObject {
    @Published var score = ""
    var scoreValid: Bool{
        scoreValidate()
    }
    
    func scoreValidate() -> Bool {
        let scoreNumber: Int = Int(self.score) ?? 0
        if scoreNumber < 200 || scoreNumber > 999 {
            return false
        }
        return true
    }
    var validScorePrompt: String {
        if scoreValidate() {
            return ""
        } else {
            return "Score must be numeric between 200 and 999"
        }
    }
}
