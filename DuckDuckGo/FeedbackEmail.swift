//
//  FeedbackEmail.swift
//  DuckDuckGo
//
//  Created by Mia Alexiou on 18/04/2017.
//  Copyright © 2017 DuckDuckGo. All rights reserved.
//

import Foundation
import Core

public struct FeedbackEmail {
    
    let mailTo: String
    let subject: String
    let body: String
    
    init(appVersion: String, device: String, osName: String, osVersion: String) {
        let osText = "(\(osName) \(osVersion))"
        mailTo = AppEmails.feedback
        subject = UserText.feedbackEmailSubject
        body = String(format: UserText.feedbackEmailBody, appVersion, device, osText)
    }
}

