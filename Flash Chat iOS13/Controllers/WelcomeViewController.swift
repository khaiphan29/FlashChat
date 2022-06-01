//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()
        
        let title = titleLabel.text
        titleLabel.text = ""
        var charTime = 0.0
        for letter in title! {
            //print(charTime)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charTime, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charTime += 1
        }
    }
    
}
