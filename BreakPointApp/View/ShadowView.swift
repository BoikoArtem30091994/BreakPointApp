//
//  ShadowView.swift
//  BreakPointApp
//
//  Created by Boiko Artem on 03.12.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
}
