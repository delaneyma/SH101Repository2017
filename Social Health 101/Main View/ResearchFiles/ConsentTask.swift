//
//  ConsentTask.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/9/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import ResearchKit

public var ConsentTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    
    let consentDocument = ConsentDocument
    
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    
    let signature = ConsentDocument.signatures?.first!
    
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, in: consentDocument)
    
    reviewConsentStep.text = "Review Consent:"
    reviewConsentStep.reasonForConsent = "I consent to join this study"
    
    steps += [reviewConsentStep]
    
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}

