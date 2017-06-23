//
//  vcMain.swift
//  basic-Swift-app
//
//  Created by Fredwin Rosales on 6/22/17.
//  Copyright © 2017 fredwinrosales. All rights reserved.
//

import UIKit

class vcMain: UIViewController {

    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnSave()
    {
        print("Save Button Pressed \(String(describing: txtUsername.text))")
    }
    
    @IBAction func btnLoad()
    {
        print("Load Button Pressed \(String(describing: txtPassword.text))")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
