//
//  ViewController.swift
//  calcapp2
//
//  Created by Admin on 07/10/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblResult: UITextField!
    
    
    var result = Float()
    var currentnumber = Float()
    
    var currentOp = String()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        lblResult.text = ("\(result)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func btnNumberInput(_ sender: UIButton) {
        
        currentnumber = currentnumber * 10 + Float(Int(sender.titleLabel?.text ?? "") ?? 0)
        lblResult.text = ("\(currentnumber)")
    }

    
    @IBAction func btnOperationInput(_ sender: UIButton) {
        
        switch currentOp {
        
            case "=":
            result = currentnumber
            
            case "+":
            result = result + currentnumber
            
            case "-":
            result = result - currentnumber
            
            case "*":
            result = result * currentnumber
            
            case "/":
            result = result / currentnumber
            
        default:print("Error")
        
        
        }
        
        currentnumber = 0
        lblResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
        result = 0
            
        }
        
        currentOp = sender.titleLabel!.text! as String!
        
       
        
        
    }
    
    
    @IBAction func btnClearInput(_ sender: UIButton) {
        
        currentnumber = 0
        result = 0
        currentOp = "="
        lblResult.text = ("\(result)")
    }
}

