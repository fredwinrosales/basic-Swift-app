//
//  ViewController.swift
//  basic-Swift-app
//
//  Created by Fredwin Rosales on 6/20/17.
//  Copyright © 2017 fredwinrosales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outputLabel2: UILabel!
    
    var currentCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addOneButton(_ sender: UIButton) {
        currentCount = currentCount + 1
        
        print("Hola mundo")
        
        let arreglo = ["Swift", "Objective-C", "C++"]
        
        print(arreglo.joined(separator: ", "))
        
        outputLabel2.text = "The button has been clicked \(currentCount) number of times"
        outputLabel2.textColor = UIColor.red
    }
    

}

