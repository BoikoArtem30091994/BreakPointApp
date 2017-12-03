//
//  InsetTextField.swift
//  BreakPointApp
//
//  Created by Boiko Artem on 03.12.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {

    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        setUpView()
        super.awakeFromNib()
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)

    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)

    }
    
    func setUpView(){
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
        self.attributedPlaceholder = placeholder
    }
}
