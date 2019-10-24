//
//  ViewController.swift
//  FormApp
//
//  Created by HMSPL on 24/10/19.
//  Copyright © 2019 HMSPL. All rights reserved.
//

import UIKit

class ViewController: ComponentIntendationViewController {
    /// Holds the Scroll View
    @IBOutlet weak var scrollView: UIScrollView!
    
    /// Holds the First Name Field
    @IBOutlet weak var txtFldFirstName: UITextField!
    
    /// Holds the Last Name Field
    @IBOutlet weak var txtFldLastName: UITextField!
    
    /// Holds the Email Field
    @IBOutlet weak var txtFldEmail: UITextField!
    
    /// Holds the scroll view bottom constraint
    @IBOutlet weak var constraintScrollViewBottom: NSLayoutConstraint!
    
    /// Holds the model for this controller
    var model = FormModel()
    
    /// When View Gets Loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
        // Do any additional setup after loading the view.
    }
    
    /// Configure Scroll View for Keyboard Handling
    func configureScrollView() {
        scrollViewOutletBase = scrollView
        scrollViewBottomConstraintBase = constraintScrollViewBottom
    }
    
    /// Validates the first, last, email and shows alert based on it.
    func submitData() {
        let validatedString = model.validate(firstName: txtFldFirstName.text!, lastName: txtFldLastName.text!, email: txtFldEmail.text!)
        if validatedString.isEmpty {
            self.showAlertMessage(message: AlertConstants.dataSaved)
        } else {
            self.showAlertMessage(message: validatedString)
        }
    }
    
    // When Submit Button is Clicked
    @IBAction func submitClicked(_ sender: Any) {
        self.view.endEditing(true)
        submitData()
    }
}

