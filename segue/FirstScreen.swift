//
//  ViewController.swift
//  segue
//
//  Created by Valentyn Bokhonov on 05.05.2021.
//

import UIKit

class FirstScreen: UIViewController {
    
    var firstName: String!
    var secondName: String!
    
    @IBOutlet weak var hiddenLableForOutput: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstName = firstName, let secondName = secondName {
            hiddenLableForOutput.isHidden = false
            hiddenLableForOutput.text = "\(firstName) \(secondName)!"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "toSecondScreen", let secondVC =
            segue.destination as? SecondScreen {
            secondVC.firstName = firstNameTextField.text
        }
    }
    
}

