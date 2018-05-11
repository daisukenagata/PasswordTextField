//
//  PasstextField.swift
//  PasswordTextField
//
//  Created by 永田大祐 on 2017/04/28.
//  Copyright © 2017年 永田大祐. All rights reserved.
//

import UIKit

 class PasstextField:UITextField{
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func pass(st:String,tag:Int,textField:UITextField){
        guard textField.tag != 0 else { return }
        if st.count > tag { textField.text = String(st[st.startIndex..<String(tag).endIndex]) }
    }
}

