//
//  ViewController.swift
//  PasswordTextField
//
//  Created by 永田大祐 on 2017/04/28.
//  Copyright © 2017年 永田大祐. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var passTextField: PasstextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        passTextField.delegate = self
        passTextField.tag = 7
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passTextField.pass(st: passTextField.text!, tag: passTextField.tag, textField: textField)
        textField.resignFirstResponder()
        return false
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        passTextField.pass(st:passTextField.text!, tag: passTextField.tag, textField: textField)
        return true
    }

}
