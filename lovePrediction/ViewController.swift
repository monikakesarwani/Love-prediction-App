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
        
        var yourName: String = ""
        var yourPatnerName: String = ""
        var display: String = ""
        yourNametxt.text = yourName
        yourPatnerNameTxt.text = yourPatnerName
       
        
        var randomNumberIndex: Int = 0
        var randomNumberGenerator = Int.random(in: 0 ..< 100)
         displayLbl.text = String(randomNumberGenerator)
        
        
        
    }
    
}

