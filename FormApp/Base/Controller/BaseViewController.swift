//
//  BaseViewController.swift
//  FormApp
//
//  Created by HMSPL on 24/10/19.
//  Copyright © 2019 HMSPL. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    /// Alert Message with title and message and returns a completionHandler when ok is pressed
    func showAlertMessage(title: String = "",message : String,  completionHandler:(()->())? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let retry = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            debugPrint("Ok Pressed")
            completionHandler?()
        }
        alertController.addAction(retry)
        self.present(alertController, animated: true, completion: nil)
    }
}
