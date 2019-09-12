//
//  ViewController.swift
//  lovePrediction
//
//  Created by Anil on 8/30/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let yourName : String = ""
    let yourPatnerName : String = ""
    var display : String = ""
    var randomNumberGenerator : Int = 0
   
    
    @IBOutlet weak var yourNametxt: UITextField!
    @IBOutlet weak var yourPatnerNameTxt: UITextField!
    @IBOutlet weak var displayLbl: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var restartLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setup()
        
    }
    // when go button is pressed. if user fill all the information than excute the code otherwise show UIAlert and its action
    @IBAction func goButton(_ sender: UIButton) {
        
        if yourNametxt.text != "" && yourPatnerNameTxt.text != ""{
            yourNametxt.text = yourName
            yourPatnerNameTxt.text = yourPatnerName
            randomNumberGenerator = Int.random(in: 0 ..< 100)
            displayLbl.text = "Your love score is \(randomNumberGenerator) %"
            displayLbl.isHidden = false
            restartLabel.isHidden = false
            
        } else if  yourNametxt.text == "" && yourPatnerNameTxt.text == ""{
            //print("Error")
            let alert = UIAlertController(title: "Error", message: "Fill all the informations above box.", preferredStyle: .alert)

            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.setup()
            })
            alert.addAction(restartAction)

            present(alert, animated: true, completion: nil)
        }
    

    }
    //when restart button is pressed. it sets up all IBOUTLET
    @IBAction func restartButton(_ sender: UIButton) {
        displayLbl.isHidden = true
        yourPatnerNameTxt.text = ""
        yourNametxt.text = ""
        restartLabel.isHidden = true
        
    }
    
    //when this method is treggeried. set IBOUTLET
    func setup(){
    restartLabel.isHidden = true
    displayLbl.isHidden = true

    }
    
}

