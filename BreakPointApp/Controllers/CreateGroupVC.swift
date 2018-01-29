//
//  CreateGroupVC.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 26.01.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var emailSearchTextField: UITextField!
    
    @IBOutlet weak var groupMemberLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var doneButton: UIButton!
    
    var emailArray = [String]()
    var choosenUserArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        emailSearchTextField.delegate = self
        
        emailSearchTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        doneButton.isHidden = true
    }
    
    @objc func textFieldDidChange() {
        if emailSearchTextField.text == ""{
            emailArray = []
            tableView.reloadData()
        } else {
            DataService.instance.getEmail(forSearchQuery: emailSearchTextField.text!, handler: { (returnedEmailArray) in
                self.emailArray = returnedEmailArray
                self.tableView.reloadData()
            })
        }
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButtonWasPressed(_ sender: Any) {
        
    }
}

extension CreateGroupVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let  cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell()}
        let profileImage = UIImage(named: "defaultProfileImage")
        
        if choosenUserArray.contains(emailArray[indexPath.row]) {
            cell.configureCell(profileImage: profileImage!, email: emailArray[indexPath.row], isSelected: true)
        } else {
            cell.configureCell(profileImage: profileImage!, email: emailArray[indexPath.row], isSelected: false)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? UserCell else {return}
        if !choosenUserArray.contains(cell.emaillabel.text!) {
            choosenUserArray.append(cell.emaillabel.text!)
            groupMemberLabel.text = choosenUserArray.joined(separator: ", ")
            doneButton.isHidden = false
        } else {
            choosenUserArray = choosenUserArray.filter({ $0 != cell.emaillabel.text! })
            if choosenUserArray.count >= 1{
                groupMemberLabel.text = choosenUserArray.joined(separator: ", ")
            } else {
                groupMemberLabel.text = "Add people to your group"
                doneButton.isHidden = true
            }
        }
    }
}

extension CreateGroupVC: UITextFieldDelegate {
    
}
