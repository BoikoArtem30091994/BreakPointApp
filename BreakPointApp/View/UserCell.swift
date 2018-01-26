//
//  UserCell.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 26.01.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    
    func configureCell (profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = image
        self.emaillabel.text = email
        if isSelected {
            self.checkImage.isHidden = false
        } else {
            self.checkImage.isHidden = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
