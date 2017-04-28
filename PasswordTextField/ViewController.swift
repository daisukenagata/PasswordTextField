//
//  ViewController.swift
//  PasswordTextField
//
//  Created by 永田大祐 on 2017/04/28.
//  Copyright © 2017年 永田大祐. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
  
    var passtextField = PasstextField()
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - UITextFieldDelegate
        
        self.textField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        passtextField.pass(st: textField.text!, tag: textField.tag, textField: textField)
        
        return true
    }

}
