//
//  ViewController.swift
//  salonKadai2
//
//  Created by 吉田晃崇 on 2021/08/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TL: UILabel!
    @IBOutlet weak var segmentContoroll: UISegmentedControl!
    
    var result = Double()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


   
    @IBAction func resultButton(_ sender: Any) {
        
        let num1 = Double(TF1.text ?? "") ?? 0.0
        let num2 = Double(TF2.text ?? "") ?? 0.0
        
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
        TL.text = result
        
    }
    
        
       
     
    
    
    
    
    
    
}

