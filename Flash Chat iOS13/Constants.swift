//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Phan Khai on 01/06/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
let APP_NAME = "⚡️FlashChat" 
struct K {
    static let appName = "⚡️FlashChat" 
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToMessenger"
    static let loginSegue = "LoginToMessenger"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
