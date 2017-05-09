//
//  ConsentDocument.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/9/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDoc = ORKConsentDocument()
    consentDoc.title = NSLocalizedString("Research Consent Form", comment: "Please review the following three consent elements")

    let section1 = ORKConsentSection(type: .overview)
    section1.summary = NSLocalizedString("Consent Information: the following three pages contain general information about this study and asks for your consent before the survey begins.", comment: "")
    section1.content = NSLocalizedString("SH101 was designed to help patients and clinicians have more socially conscious health provider interactions. This brief survey aims to investigate some of its impact.", comment: "")
    
    
    let section2 = ORKConsentSection(type: .dataGathering)
    section2.summary = NSLocalizedString("This study involves a one-time, brief (2 minutes), and anonymous survey about your usage of this app.", comment: "")
    section2.content = NSLocalizedString("Data gathering includes only this anonymous survey of estimated length of 2 minutes. Your participation is voluntary.", comment: "")
    
    let section3 = ORKConsentSection(type: .privacy)
    section3.summary = NSLocalizedString("All survey data is anonymous and you may cancel your participation at any step.", comment: "")
    section3.content = NSLocalizedString("Your survey is anonymous, encrypted, and processed on secure servers. You may withdrawl or cancel your involvement in this study at any step.", comment: "")
    
    consentDoc.sections = [section1, section2, section3]
    
    
    //TODO: consent sections
    
    //TODO: signature
    
    return consentDoc
}
