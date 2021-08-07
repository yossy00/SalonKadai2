//
//  ViewController.swift
//  salonKadai2
//
//  Created by 吉田晃崇 on 2021/08/04.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var segmentContoroll: UISegmentedControl!
    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func resultButton(_ sender: Any) {
        
        let num1 = Double(number1TextField.text ?? "") ?? 0.0
        let num2 = Double(number2TextField.text ?? "") ?? 0.0
        
        var result:String {
            
            switch segmentContoroll.selectedSegmentIndex{
            
            case 0:
                return String(num1 + num2)
            case 1:
                return String(num1 - num2)
            case 2:
                return String(num1 * num2)
            case 3:
                if num2 == 0{
                   
                    return "割る数には0以外を入力してください"
                   
                }else{
                    
                    return String(num1 / num2)
                }
                
            default:
                return ""
                
            
            }
            
          
            
        }
        textLabel.text = result
        
    }
    
        
       
     
    
    
    
    
    
    
}

