//
//  ViewController.swift
//  simpleCalculator
//
//  Created by APPLE on 08/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen:Double=0
    var previousnumber:Double=0
    var performmathop=false
    var operation=0
    
    
    
    
    @IBOutlet weak var calclabel: UILabel!
    
    
    
    @IBAction func operatorbtn(_ sender: UIButton) {
        if calclabel.text != "" && sender.tag != 16 && sender.tag != 15{
            previousnumber=Double(calclabel.text!)!
            if sender.tag == 11{
                calclabel.text="+"
            }
            else if sender.tag == 12{
                calclabel.text="-"
            }
            else if sender.tag == 13{
                calclabel.text="/"
            }
            else if sender.tag == 14{
                calclabel.text="*"
                
            }
            
            performmathop=true
            operation=sender.tag
            
        }
        else if sender.tag == 15{
            if operation == 11{
                calclabel.text=String(previousnumber+numberonscreen)
            }
            else if operation == 12{
                calclabel.text=String(previousnumber-numberonscreen)
                
            }
            else if operation == 13{
                calclabel.text=String(previousnumber/numberonscreen)
            }
            else if operation == 14{
                calclabel.text=String(previousnumber*numberonscreen)
            }
        }
        else if sender.tag == 16{
            calclabel.text=""
            previousnumber=0
            numberonscreen=0
            operation=0
        }
    }
    
    
    @IBAction func operandbtn(_ sender: UIButton) {
        if performmathop == true{
            calclabel.text=String(sender.tag-1)
            numberonscreen=Double(calclabel.text!)!
            performmathop=false
        }
        else{
            calclabel.text = calclabel.text! + String(sender.tag-1)
            numberonscreen=Double(calclabel.text!)!
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

