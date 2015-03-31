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
    
    var letterContainer: LetterContainer = LetterContainer()

    @IBOutlet weak var CurrentLetterTextField: NSTextField!
    @IBOutlet weak var UpcommingLettersTextField: NSTextField!
    
    required init?(coder: NSCoder) {

        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Delegate for keydown event
        View().delegate = self
        
        CurrentLetterTextField.stringValue = String(letterContainer.letters[0].letter)
        UpcommingLettersTextField.stringValue = letterContainer.getUpcommingLettersString()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func keyDown(theEvent: NSEvent) {
        if (theEvent.characters! == String(letterContainer.letters[0].letter)){
            // Correct carracter
            view.layer?.backgroundColor = NSColor.greenColor().CGColor
            UpdateLetters();
        } else {
            // Wrong carracter
            view.layer?.backgroundColor = NSColor.redColor().CGColor
        }
    }
    
    func UpdateLetters(){
        letterContainer.GenerateLetter()
        UpcommingLettersTextField.stringValue = letterContainer.getUpcommingLettersString()
        CurrentLetterTextField.stringValue = String(letterContainer.letters[0].letter)
    }
}