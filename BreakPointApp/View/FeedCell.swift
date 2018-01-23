//
//  FeedCellTableViewCell.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 23.01.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    

    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.contentLabel.text = content
    }
}
