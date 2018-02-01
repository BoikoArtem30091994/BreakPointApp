//
//  GroupFeedVC.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 01.02.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLabel: UILabel!
    @IBOutlet weak var membersGroupLabel: UILabel!
    @IBOutlet weak var sendButtonView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var group: Group?
    
    func initGroupData(forGroup group: Group) {
        self.group = group
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendButtonView.bindToKeyboard()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLabel.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
            self.membersGroupLabel.text = returnedEmails.joined(separator: ", ")
        }
        membersGroupLabel.text = group?.members.joined(separator: ", ")
    }

    @IBAction func sendButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
