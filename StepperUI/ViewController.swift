//
//  ViewController.swift
//  StepperUI
//
//  Created by SGMobile on 24/09/21.
//  Copyright © 2021 Scientific Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        myStepper.center = self.view.center
        view.addSubview(myStepper)
    }
    
    private var myStepper : UIStepper = {
        let myStepper = UIStepper()
        myStepper.backgroundColor = .cyan
        // If tap and hold the button, UIStepper value will continuously increment
        myStepper.autorepeat = true
        // Set UIStepper max value to 10
        myStepper.maximumValue = 10
        // Set UIStepper min value to 0
        myStepper.minimumValue = 0
        // Resume UIStepper value from the beginning
        myStepper.wraps = false
        // UIStepper increment or decrement by 2 every time the button is tapped
        //myStepper.stepValue = 3
        //add an action   .
        myStepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        myStepper.translatesAutoresizingMaskIntoConstraints = false
        return myStepper
    }()

    @objc func stepperValueChanged(_ sender:UIStepper!)
    {
        print("UIStepper is now \(Int(sender.value))")
    }
    
    func setUpAutolayout() {
        myStepper.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.size.height/2).isActive = true
        myStepper.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        myStepper.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.size.width/2).isActive = true
        myStepper.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

