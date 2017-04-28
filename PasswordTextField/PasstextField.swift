//
//  PasstextField.swift
//  PasswordTextField
//
//  Created by 永田大祐 on 2017/04/28.
//  Copyright © 2017年 永田大祐. All rights reserved.
//

import UIKit

protocol underBarTextFeildDelegate:class{
    
    func pass(st:String,tag:Int,textField:UITextField)
    
}

 class PasstextField:UITextField,underBarTextFeildDelegate{
    
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    //MARK:
    
    func pass(st:String,tag:Int,textField:UITextField){
        
        guard textField.tag != 0 else {
            return
        }
        
        if st.characters.count > tag {
            
            textField.text = st.substring(to: st.index(st.startIndex,offsetBy:tag))
            
        }
    }
}

