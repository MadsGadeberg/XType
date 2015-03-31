//
//  LetterContainer.swift
//  XType
//
//  Created by Mads Gadeberg Jensen on 30/03/15.
//  Copyright (c) 2015 Mads Gadeberg Jensen. All rights reserved.
//

import Foundation

class LetterContainer{
    var letters: [Letter] = [Letter.GenerateLetter(nil, row: nil, side: nil),
        Letter.GenerateLetter(nil, row: nil, side: nil),
        Letter.GenerateLetter(nil, row: nil, side: nil),
        Letter.GenerateLetter(nil, row: nil, side: nil),
        Letter.GenerateLetter(nil, row: nil, side: nil)]
    
    func getUpcommingLettersString() -> String{
        var str: String = ""
        
        for (var i = self.letters.count - 1; i > 0; i--){
            str += String(self.letters[i].letter)
        }
        
        return str
    }
    
    func GenerateLetter() {
        letters.removeAtIndex(0)
        letters.insert(Letter.GenerateLetter(false, row: nil, side: nil), atIndex: self.letters.count)
    }
}