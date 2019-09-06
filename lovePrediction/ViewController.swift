//
//  ViewController.swift
//  lovePrediction
//
//  Created by Anil on 8/30/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var yourNametxt: UITextField!
    
    
    @IBOutlet weak var yourPatnerNameTxt: UITextField!
    
    
    
    @IBOutlet weak var displayLbl: UILabel!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        update()
    }
    
    
    
    


    @IBAction func goButton(_ sender: UIButton) {
        
        update()
        
    }
    
    func update(){
        
        let yourName: String = ""
        let yourPatnerName: String = ""
        var display: String = ""
        yourNametxt.text = yourName
        yourPatnerNameTxt.text = yourPatnerName
       
        
        
        let randomNumberGenerator = Int.random(in: 0 ..< 100)
         displayLbl.text = String(randomNumberGenerator)
        
        
        if yourNametxt.text == nil && yourPatnerNameTxt.text == nil {
            "Put Your Name"
        }else{
            
            
        }
        
        
        
    }
    
}

