//
//  SurveyTask.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/9/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit
import ResearchKit

public var SurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Social Health 101 User Survey:"
    instructionStep.text = "Thanks for agreeing to take the survey! Click below to begin."
    //    instructionStep.image =
    steps += [instructionStep]
    
    
    // Q1 Ask User Role - can specify instead of .singleChoice and use .multipleChoice
    let Q1StepTitle = "Select which role best describes you:"
    let Q1textChoices = [
        ORKTextChoice(text: "Patient", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Medical Student", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Registered Nurse", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Nurse Practitioner/Physician Assistant", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Resident Physician", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Attending Physician", value: 4 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Other", value: 5 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q1AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: Q1textChoices)
    let Q1QuestionStep = ORKQuestionStep(identifier: "Q1TextChoiceQuestionStep", title: Q1StepTitle, answer: Q1AnswerFormat)
    steps += [Q1QuestionStep]
    
    
    
    // Q2 Ask User Role - can specify instead of .singleChoice and use .multipleChoice
    let Q2StepTitle = "On average, how often do you use the SH101 app?"
    let Q2textChoices = [
        ORKTextChoice(text: "Daily", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "2-5 times per week ", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Once per week", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "2-3 times per month", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Once or less per month", value: 5 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q2AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: Q2textChoices)
    let Q2QuestionStep = ORKQuestionStep(identifier: "Q2TextChoiceQuestionStep", title: Q2StepTitle, answer: Q2AnswerFormat)
    steps += [Q2QuestionStep]
    
    
    
    // Q3 What is the most common way you use SH101? - can specify instead of .singleChoice and use .multipleChoice
    let Q3StepTitle = "What are the most common ways you use SH101? (please select all that apply)"
    let Q3textChoices = [
        ORKTextChoice(text: "To newly learn what programs are available that you were not previously aware of.", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "To reference specific information, such as phone numbers, addresses, eligibility criteria, etc.", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "To show others the resources on the app, such as patients or colleagues.", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Other - (please specify in comments at end of survey)", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q3AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: Q3textChoices)
    let Q3QuestionStep = ORKQuestionStep(identifier: "Q3TextChoiceQuestionStep", title: Q3StepTitle, answer: Q3AnswerFormat)
    steps += [Q3QuestionStep]
    
    
    
    
    // Q4 Rate your agreement: This app helped me learn about more resources I didn't previously know about:
    let Q4StepTitle = "Please rate your agreement:   ''This app helped me learn about more resources I didn't previously know about''"
    let Q4textChoices = [
        ORKTextChoice(text: "Strongly Agree", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Agree", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Neutral", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Strongly Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q4AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: Q4textChoices)
    let Q4QuestionStep = ORKQuestionStep(identifier: "Q4TextChoiceQuestionStep", title: Q4StepTitle, answer: Q4AnswerFormat)
    steps += [Q4QuestionStep]
    
    
    // Q5 Rate your agreement: This app helped me make more referrals to social programs than previously.
    let Q5StepTitle = "Please rate your agreement:   ''This app helped me make more referrals to social programs than previously.''"
    let Q5textChoices = [
        ORKTextChoice(text: "Strongly Agree", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Agree", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Neutral", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Strongly Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q5AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: Q5textChoices)
    let Q5QuestionStep = ORKQuestionStep(identifier: "Q5TextChoiceQuestionStep", title: Q5StepTitle, answer: Q5AnswerFormat)
    steps += [Q5QuestionStep]
    
    
    
    // Q6: This app helped me feel more empowered to help my patients with their social issues.
    let Q6StepTitle = "Please rate your agreement:   ''This app helped me feel more empowered to help my patients with their social issues.'"
    let Q6textChoices = [
        ORKTextChoice(text: "Strongly Agree", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Agree", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Neutral", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Strongly Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q6AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: Q6textChoices)
    let Q6QuestionStep = ORKQuestionStep(identifier: "Q6TextChoiceQuestionStep", title: Q6StepTitle, answer: Q6AnswerFormat)
    steps += [Q6QuestionStep]
    
    
    
    
    //Q7 This app helped me more frequently ask about social issues (i.e. social history)
    let Q7StepTitle = "Please rate your agreement:   ''This app helped me more frequently ask about social issues (i.e. social history).''"
    let Q7textChoices = [
        ORKTextChoice(text: "Strongly Agree", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Agree", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Neutral", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Strongly Disagree", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    
    let Q7AnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice,     textChoices: Q7textChoices)
    let Q7QuestionStep = ORKQuestionStep(identifier: "Q7TextChoiceQuestionStep", title: Q7StepTitle, answer: Q7AnswerFormat)
    steps += [Q7QuestionStep]
    
    
    
    // add name simple text input question:
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 500)
    nameAnswerFormat.multipleLines = true
    let nameQuestionStepTitle = "Please provide any comments/questions/feedback here:"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    
    
    //TODO: add summary step
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Survey Complete"
    summaryStep.text = "Thank you for your participation!"
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}
