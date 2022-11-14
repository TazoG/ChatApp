//
//  WelcomeViewController.swift
//  ChatApp
//
//  Created by Tazo Gigitashvili on 14.11.22.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "⚡️FlashChat"
        
        //MARK: - For Loop reference for text timer
//        titleLabel.text = ""
//        var charIndex = 0.0
//        let titleText = "⚡️FlashChat"
//
//        for letter in titleText {
//            print("-")
//            print(0.1 * charIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
//
    }
    

}
