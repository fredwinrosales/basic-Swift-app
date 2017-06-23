//
//  vcMain.swift
//  basic-Swift-app
//
//  Created by Fredwin Rosales on 6/22/17.
//  Copyright © 2017 fredwinrosales. All rights reserved.
//

import UIKit
import CoreData

class vcMain: UIViewController {

    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnSave()
    {
        let addDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = addDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue(txtUsername.text, forKey: "username")
        
        newUser.setValue(txtPassword.text, forKey: "password")
        
        do{
            try context.save()
            print("SAVED")
        }catch{
            //ERROR
        }
    }
    
    @IBAction func btnLoad()
    {
        let addDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = addDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        do{
            let results = try context.fetch(request)
            
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    if let username = result.value(forKey: "username") as? String
                    {
                        print (username)
                    }
                    if let password = result.value(forKey: "password") as? String
                    {
                        print (password)
                    }
                }
            }
        }catch{
            //ERROR
        }
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
