//
//  ResearchViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/9/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit
import ResearchKit

class ResearchViewController: UIViewController, ORKTaskViewControllerDelegate {

    
    @IBAction func ResearchSurveyAction(_ sender: Any) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)

    }
    
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        
        //Handle results with taskViewController.result
        
        //        switch reason {
        //        case .Completed:
        //            // Save onboarding result
        //            // Dismiss task and onboarding controller
        //
        //        case .Discarded, .Failed, .Saved:
        //            // Only dismiss task controller
        //            // (back to onboarding controller)
        
            taskViewController.dismiss(animated: true, completion: nil)
            
        
    
    
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
