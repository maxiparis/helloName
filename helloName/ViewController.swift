//
//  ViewController.swift
//  helloName
//
//  Created by Maximiliano París Gaete on 3/22/24.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var afterClickSaluteText: UILabel!
    @IBOutlet weak var helloButton: UIButton!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        instructionLabel.text = "Enter your name and select \"Hello!\""
        afterClickSaluteText.isHidden = true
    }
    
    
    @IBAction func helloButtonClicked(_ sender: UIButton) {
        afterClickSaluteText.text = "Hello " + nameText.text! + "!"
        afterClickSaluteText.isHidden = false
        nameText.text = ""
    }
}

