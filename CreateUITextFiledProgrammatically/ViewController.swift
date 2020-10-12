//
//  ViewController.swift
//  CreateUITextFiledProgrammatically
//
//  Created by ramil on 12.10.2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let txtUserName = UITextField(frame: CGRect(x: 10.0, y: 100.0, width: UIScreen.main.bounds.size.width - 20.0, height: 50.0))
        txtUserName.backgroundColor = .lightGray
        txtUserName.borderStyle = .line
        txtUserName.keyboardAppearance = .light
        txtUserName.keyboardType = .default
        txtUserName.placeholder = "Enter user name"
        txtUserName.font = UIFont.systemFont(ofSize: 15.0)
        txtUserName.delegate = self
        
        self.view.addSubview(txtUserName)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

