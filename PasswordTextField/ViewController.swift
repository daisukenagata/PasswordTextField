//
//  ViewController.swift
//  PasswordTextField
//
//  Created by 永田大祐 on 2017/04/28.
//  Copyright © 2017年 永田大祐. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //var keyboardView = KeyboardView()
    var passtextField = PasstextField()
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - UITextFieldDelegate
        
        self.textField.delegate = self
        //keyboardView.frame = CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:44)
       
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        passtextField.pass(st: textField.text!, tag: textField.tag, textField: textField)

        textField.resignFirstResponder()
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
      
        passtextField.pass(st: textField.text!, tag: textField.tag, textField: textField)
        
        return true
    }

}

//protocol KeyboardDelegate: class {
//    func keyWasTapped(text: String)
//}
//
//class KeyboardView: UIView {
//
//    // This variable will be set as the view controller so that
//    // the keyboard can send messages to the view controller.
//    weak var delegate: KeyboardDelegate?
//
//
//    // MARK:- keyboard initialization
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//       // initializeSubviews()
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        initializeSubviews()
//    }
//
//    func initializeSubviews() {
//        let xibFileName = "KeyboardView" // xib extention not included
//        let view = Bundle.main.loadNibNamed(xibFileName, owner: self, options: nil)?[0] as! UIView
//        self.addSubview(view)
//        view.frame = self.bounds
//    }
//
//    // MARK:- Button actions from .xib file
//    func keyTapped(_ sender: UIButton) {
//        // When a button is tapped, send that information to the
//        // delegate (ie, the view controller)
//        self.delegate?.keyWasTapped(text: sender.titleLabel!.text!) // could alternatively send a tag value
//    }
//
//}

