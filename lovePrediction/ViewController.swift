//
//  ViewController.swift
//  lovePrediction
//
//  Created by Anil on 8/30/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let yourName: String = ""
    let yourPatnerName: String = ""
    var display: String = ""
    var randomNumberGenerator : Int = 0
    //var pressed: Int = 1
    
    
    
    @IBOutlet weak var yourNametxt: UITextField!
    
    
    @IBOutlet weak var yourPatnerNameTxt: UITextField!
    
    
    @IBOutlet weak var displayLbl: UILabel!
    
   
    @IBOutlet weak var goLable: UIButton!
    
    @IBOutlet weak var restartLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setup()
        
    }
    
    
    
    


    @IBAction func goButton(_ sender: UIButton) {
        
        
            yourNametxt.text = yourName
            yourPatnerNameTxt.text = yourPatnerName
            randomNumberGenerator = Int.random(in: 0 ..< 100)
            displayLbl.text = "Your love score is \(randomNumberGenerator) %"
            goLable.isHidden = false
            displayLbl.isHidden = false
        
            
        
    
       
        
    }
    

    
    func setup() {
    
        goLable.isHidden = false
        displayLbl.isHidden = true
        
        yourNametxt.isHidden = false
        yourNametxt.isHidden = false
        restart()
        
    }
    
    
    
    @IBAction func restartButton(_ sender: UIButton) {
        setup()
        
    }
    
    func restart(){
        restartLabel.isHidden = true
    }
    
}

