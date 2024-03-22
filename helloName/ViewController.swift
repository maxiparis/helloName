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
        initializeHideKeyboard()
    }
    
    
    @IBAction func helloButtonClicked(_ sender: UIButton) {
        afterClickSaluteText.text = "Hello " + nameText.text! + "!"
        afterClickSaluteText.isHidden = false
        nameText.text = ""
    }
    
    func initializeHideKeyboard(){
        //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
           target: self,
           action: #selector(dismissMyKeyboard)
        )
        //Add this tap gesture recognizer to the parent view
        view.addGestureRecognizer(tap)
    }
    @objc func dismissMyKeyboard(){
        //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
        //In short- Dismiss the active keyboard.
        view.endEditing(true)
    }
   
   
   
   
   
   //Set up of the toolbar in the top of the keyboard, with DONE button
   func setupTextFields() {
           let toolbar = UIToolbar()
           let flexSpace = UIBarButtonItem(
               barButtonSystemItem: .flexibleSpace,
               target: nil,
               action: nil)
           let doneButton = UIBarButtonItem(title: "Done",
                                            style: .done,
                                            target: self,
                                            action: #selector(doneButtonTapped))
           
           toolbar.setItems([flexSpace, doneButton], animated: true)
           toolbar.sizeToFit()
           
           //Her put all the UITextFields that will implement it
           nameText.inputAccessoryView = toolbar
       }
       
       @objc func doneButtonTapped() {
           view.endEditing(true)
       }
    
    
}

