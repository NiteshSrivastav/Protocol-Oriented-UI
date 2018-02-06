//
//  LoginVC.swift
//  Protocol Oriented UI
//
//  Created by Nitesh Srivastva on 05/02/18.
//  Copyright © 2018 Nitesh Srivastva. All rights reserved.
//

import UIKit
class DesignTextField: UITextField, Jitterable {
    
}

class LoginButton: UIButton, Jitterable {
    
}

class FlashingLabel: UILabel, Flashable, Jitterable {
    
}


class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTf: DesignTextField!
    
    @IBOutlet weak var passwordTF: DesignTextField!
    
    @IBOutlet weak var errorLbl: FlashingLabel!
    @IBOutlet weak var loginBtn: LoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginBtnPressed(_ sender: UIButton) {
        emailTf.jitter()
        passwordTF.jitter()
        errorLbl.flash()
        errorLbl.jitter()
        loginBtn.jitter()
        
    }
    
}

