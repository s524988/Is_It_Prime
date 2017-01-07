//
//  ViewController.swift
//  Is it prime
//
//  Created by Practice swift on 1/1/17.
//  Copyright © 2017 Practice swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!

    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
        if let userstring = textfield.text{
        let a = Int(userstring)
            if let num = a{
                var isprime = true
                
                if(num == 1){
                    isprime = false
                }
                var i = 2
                while i < num{
                    
                    if (num % i == 0){
                        isprime = false
                        
                    }
                    i += 1
                }
                if isprime{
                label.text = "\(num) ia a prime"
                }else{
                label.text = "\(num) is not a prime"
                }
            }else{
            label.text = "Please enter a positive whole number"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

