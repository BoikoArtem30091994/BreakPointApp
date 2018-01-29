//
//  GroupCell.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 29.01.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var gorupTitleLabel: UILabel!
    @IBOutlet weak var groupDescriptionLabel: UILabel!
    @IBOutlet weak var memberCountLabel: UILabel!
    

    func configureCell(title: String, description: String, memberCount: Int){
        self.gorupTitleLabel.text = title
        self.groupDescriptionLabel.text = description
        self.memberCountLabel.text = "\(memberCount) members"
    }
}
