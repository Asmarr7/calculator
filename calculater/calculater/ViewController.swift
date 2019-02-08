//
//  ViewController.swift
//  calculater
//
//  Created by Asma Alreshoud on 1/31/18.
//  Copyright © 2018 Asma and mashael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numOn:Double=0;
    var prev:Double=0
    var math:Bool=false;
    var op=0;
    var prevOp=0
    var neg=false
 
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 100 && sender.tag != 15
        {
            prev=Double(label.text!)!
           if sender.tag == 14 // div
           {
            
        
            }
          else  if sender.tag == 13 // multip
            {
                
                
            }
           else  if sender.tag == 12 // subtract
           {
            
            
           }
           else  if sender.tag == 11 // add
           {
            
            
            }
            math=true;
            op=sender.tag
        }
        else if sender.tag==100
        {
            if op==14{
                label.text=String(prev/numOn)
            }
            else if op==13{
                label.text=String(prev*numOn)
            }
            else if op==12{
                label.text=String(prev-numOn)
            }
            else if op==11{
                label.text=String(prev+numOn)
            }
            else if op==17
            {
                label.text=String(prev.truncatingRemainder(dividingBy: numOn))
            }
        }
        else if sender.tag==15{
            label.text=""
            numOn=0
            prev=0
            op=0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

   
    @IBAction func numbers(_ sender: UIButton) {
        if math==true {
            label.text=String(sender.tag-1)
            numOn=Double(label.text!)!
            math=false
        }
        else{
            if sender.tag == 16{
                label.text=label.text! + "."
                
            }
            else if sender.tag == 18 && neg==false{
                label.text="-"+label.text!
                neg=true
            }
                else if sender.tag == 18 && neg==true{
                // ind=label.text!.index(of: "-")!
               // label.text!=label.text!.String(suffix(label.text!.length))
                
            }
            else{
   label.text=label.text! + String(sender.tag-1)
                numOn=Double(label.text!)!}
        }
        
    }
}

