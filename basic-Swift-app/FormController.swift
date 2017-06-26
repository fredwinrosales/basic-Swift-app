//
//  FormController.swift
//  basic-Swift-app
//
//  Created by Fredwin Rosales on 6/25/17.
//  Copyright © 2017 fredwinrosales. All rights reserved.
//

import UIKit

class FormController: UIViewController {
    @IBOutlet weak var textUsername: UITextField!
    
    @IBOutlet weak var textEmail: UITextField!
    
    
    @IBOutlet weak var textPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let users = Users(context: context)
        
        users.username = textUsername.text!
        users.email = textEmail.text!
        users.password = textPassword.text!
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
    
    
}
