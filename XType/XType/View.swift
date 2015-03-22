//
//  View.swift
//  XType
//
//  Created by Mads Gadeberg Jensen on 22/03/15.
//  Copyright (c) 2015 Mads Gadeberg Jensen. All rights reserved.
//

import Cocoa

class View: NSView {
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    override func keyDown(theEvent: NSEvent){
        println(theEvent.characters)
    }
    
    override var acceptsFirstResponder: Bool {
        return true;
    }
}
