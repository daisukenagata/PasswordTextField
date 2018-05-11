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

    override func caretRect(for position: UITextPosition) -> CGRect { return CGRect.zero }
    override func selectionRects(for range: UITextRange) -> [Any] { return [] }
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool { return false }

    func pass(st:String,tag:Int,textField:UITextField) {
        if st.count >= tag {
            textField.text = String((st.prefix(tag)))
        }
    }
}
