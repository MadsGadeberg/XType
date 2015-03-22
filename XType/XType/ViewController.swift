//
//  ViewController.swift
//  XType
//
//  Created by Mads Gadeberg Jensen on 22/03/15.
//  Copyright (c) 2015 Mads Gadeberg Jensen. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    var letters: [Letter] = [
        Letter(letter: "A", row: Row.Mid, side: Side.Left),
        Letter(letter: "B", row: Row.Bot, side: Side.Left),
        Letter(letter: "C", row: Row.Bot, side: Side.Left),
        Letter(letter: "D", row: Row.Mid, side: Side.Left),
        Letter(letter: "E", row: Row.Top, side: Side.Left),
        Letter(letter: "F", row: Row.Mid, side: Side.Left),
        Letter(letter: "G", row: Row.Mid, side: Side.Left),
        Letter(letter: "H", row: Row.Mid, side: Side.Right),
        Letter(letter: "I", row: Row.Top, side: Side.Right),
        Letter(letter: "J", row: Row.Mid, side: Side.Right),
        Letter(letter: "K", row: Row.Mid, side: Side.Right),
        Letter(letter: "L", row: Row.Mid, side: Side.Right),
        Letter(letter: "M", row: Row.Bot, side: Side.Right),
        Letter(letter: "N", row: Row.Bot, side: Side.Right),
        Letter(letter: "O", row: Row.Top, side: Side.Right),
        Letter(letter: "P", row: Row.Top, side: Side.Right),
        Letter(letter: "Q", row: Row.Top, side: Side.Left),
        Letter(letter: "R", row: Row.Top, side: Side.Left),
        Letter(letter: "S", row: Row.Mid, side: Side.Left),
        Letter(letter: "T", row: Row.Top, side: Side.Left),
        Letter(letter: "U", row: Row.Top, side: Side.Right),
        Letter(letter: "V", row: Row.Bot, side: Side.Left),
        Letter(letter: "W", row: Row.Top, side: Side.Left),
        Letter(letter: "X", row: Row.Bot, side: Side.Left),
        Letter(letter: "Y", row: Row.Top, side: Side.Right),
        Letter(letter: "Z", row: Row.Bot, side: Side.Left),
        Letter(letter: "Æ", row: Row.Mid, side: Side.Right),
        Letter(letter: "Ø", row: Row.Mid, side: Side.Right),
        Letter(letter: "Å", row: Row.Top, side: Side.Right)
    ]
    var currentLetter: Letter?
    
    @IBOutlet weak var CurrentLetter: NSTextFieldCell!
    
    @IBAction func ChangeLetter(sender: AnyObject) {
        self.currentLetter = self.letters[Int(arc4random_uniform(28))]
        CurrentLetter.stringValue = String(self.currentLetter!.letter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CurrentLetter.stringValue = String(letters[random() % 10].letter)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}