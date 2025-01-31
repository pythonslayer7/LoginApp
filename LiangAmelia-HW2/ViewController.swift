//  Project: LiangAmelia-HW2
//  EID: dl29927
//  Course: CS329E

//  ViewController.swift
//  LiangAmelia-HW2
//
//  Created by Amy Liang on 9/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var userIDLabel: UILabel!
    
    @IBOutlet weak var userPassField: UITextField!
    @IBOutlet weak var userIDText: UITextField!
    

    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let userId = userIDText.text!
        let userPassword = userPassField.text!
        if (userId == "" || userPassword == "") {
            statusLabel.text = "Invalid login"
        } else {
            statusLabel.text = "\(userId) logged in"
        }
    }
    
    // code to enable tapping on the background to remove software keyboard
    func textFieldShouldReturn(textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

