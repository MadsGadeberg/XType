//
//  ViewController.swift
//  XType
//
//  Created by Mads Gadeberg Jensen on 22/03/15.
//  Copyright (c) 2015 Mads Gadeberg Jensen. All rights reserved.
//

import Cocoa
import Foundation
import Appkit

protocol HandleKeyDownDelegate{
    func keyDown(theEvent: NSEvent);
}

class ViewController: NSViewController, HandleKeyDownDelegate{

    var currentLetter: Letter?

    @IBOutlet weak var CurrentLetterTextField: NSTextField!
    @IBAction func ChangeLetter(sender: AnyObject) {
        self.UpdateLetter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        View().delegate = self
        
        UpdateLetter()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func keyDown(theEvent: NSEvent) {
        if (theEvent.characters! == String(currentLetter!.letter)){
            println("Correct")
            view.layer?.backgroundColor = NSColor.greenColor().CGColor
            UpdateLetter();
        } else {
            println("wrong")
            view.layer?.backgroundColor = NSColor.redColor().CGColor

        }
    }
    
    func UpdateLetter(){
        currentLetter = Letter.GenerateLetter(false, row: nil, side: nil);
        CurrentLetterTextField.stringValue = String(self.currentLetter!.letter)
    }
}