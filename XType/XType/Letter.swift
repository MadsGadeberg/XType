//
//  Letter.swift
//  XType
//
//  Created by Mads Gadeberg Jensen on 22/03/15.
//  Copyright (c) 2015 Mads Gadeberg Jensen. All rights reserved.
//

import Cocoa

enum Row {
    case Bot
    case Mid
    case Top
    case Numbers
    case Function
}
enum Side {
    case Left
    case Right
}

class Letter {

    
    init(letter: Character, row: Row, side: Side, isCaps: Bool){
        self.letter = letter
        self.row = row
        self.side = side
        self.isCaps = isCaps
        
    }
    
    private(set) var letter: Character
    private(set) var row: Row
    private(set) var side: Side
    private(set) var isCaps: Bool
    
    // Returns a letter upon specified input. Nil returns all.
    class func GenerateLetter(Caps: Bool?, row: Row?, side: Side?) -> Letter{
        // All possible elements
        var letters: [Letter] = [
            Letter(letter: "A", row: Row.Mid, side: Side.Left, isCaps: true),
            Letter(letter: "B", row: Row.Bot, side: Side.Left, isCaps: true),
            Letter(letter: "C", row: Row.Bot, side: Side.Left, isCaps: true),
            Letter(letter: "D", row: Row.Mid, side: Side.Left, isCaps: true),
            Letter(letter: "E", row: Row.Top, side: Side.Left, isCaps: true),
            Letter(letter: "F", row: Row.Mid, side: Side.Left, isCaps: true),
            Letter(letter: "G", row: Row.Mid, side: Side.Left, isCaps: true),
            Letter(letter: "H", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "I", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "J", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "K", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "L", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "M", row: Row.Bot, side: Side.Right, isCaps: true),
            Letter(letter: "N", row: Row.Bot, side: Side.Right, isCaps: true),
            Letter(letter: "O", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "P", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "Q", row: Row.Top, side: Side.Left, isCaps: true),
            Letter(letter: "R", row: Row.Top, side: Side.Left, isCaps: true),
            Letter(letter: "S", row: Row.Mid, side: Side.Left, isCaps: true),
            Letter(letter: "T", row: Row.Top, side: Side.Left, isCaps: true),
            Letter(letter: "U", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "V", row: Row.Bot, side: Side.Left, isCaps: true),
            Letter(letter: "W", row: Row.Top, side: Side.Left, isCaps: true),
            Letter(letter: "X", row: Row.Bot, side: Side.Left, isCaps: true),
            Letter(letter: "Y", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "Z", row: Row.Bot, side: Side.Left, isCaps: true),
            Letter(letter: "Æ", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "Ø", row: Row.Mid, side: Side.Right, isCaps: true),
            Letter(letter: "Å", row: Row.Top, side: Side.Right, isCaps: true),
            Letter(letter: "a", row: Row.Mid, side: Side.Left, isCaps: false),
            Letter(letter: "b", row: Row.Bot, side: Side.Left, isCaps: false),
            Letter(letter: "c", row: Row.Bot, side: Side.Left, isCaps: false),
            Letter(letter: "d", row: Row.Mid, side: Side.Left, isCaps: false),
            Letter(letter: "e", row: Row.Top, side: Side.Left, isCaps: false),
            Letter(letter: "f", row: Row.Mid, side: Side.Left, isCaps: false),
            Letter(letter: "g", row: Row.Mid, side: Side.Left, isCaps: false),
            Letter(letter: "h", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "i", row: Row.Top, side: Side.Right, isCaps: false),
            Letter(letter: "j", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "k", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "l", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "m", row: Row.Bot, side: Side.Right, isCaps: false),
            Letter(letter: "n", row: Row.Bot, side: Side.Right, isCaps: false),
            Letter(letter: "o", row: Row.Top, side: Side.Right, isCaps: false),
            Letter(letter: "p", row: Row.Top, side: Side.Right, isCaps: false),
            Letter(letter: "q", row: Row.Top, side: Side.Left, isCaps: false),
            Letter(letter: "r", row: Row.Top, side: Side.Left, isCaps: false),
            Letter(letter: "s", row: Row.Mid, side: Side.Left, isCaps: false),
            Letter(letter: "t", row: Row.Top, side: Side.Left, isCaps: false),
            Letter(letter: "u", row: Row.Top, side: Side.Right, isCaps: false),
            Letter(letter: "v", row: Row.Bot, side: Side.Left, isCaps: false),
            Letter(letter: "w", row: Row.Top, side: Side.Left, isCaps: false),
            Letter(letter: "x", row: Row.Bot, side: Side.Left, isCaps: false),
            Letter(letter: "y", row: Row.Top, side: Side.Right, isCaps: false),
            Letter(letter: "z", row: Row.Bot, side: Side.Left, isCaps: false),
            Letter(letter: "æ", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "ø", row: Row.Mid, side: Side.Right, isCaps: false),
            Letter(letter: "å", row: Row.Top, side: Side.Right, isCaps: false)]
        
        // Filters elemements
        letters = letters.filter({
            (Caps == nil || $0.isCaps == Caps) &&
            (row == nil || $0.row == row) &&
            (side == nil || $0.side == side)
        })
        
        // returns random element
        return letters[Int(arc4random_uniform(UInt32(letters.count)))]
    }
}
