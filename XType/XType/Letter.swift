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
    init(letter: Character, row: Row, side: Side){
        self.letter = letter
        self.row = row
        self.side = side
    }
    
    private(set) var letter: Character
    private(set) var row: Row
    private(set) var side: Side
}
