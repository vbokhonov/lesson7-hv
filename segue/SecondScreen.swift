//
//  SecondScreen.swift
//  segue
//
//  Created by Valentyn Bokhonov on 05.05.2021.
//

import UIKit

class SecondScreen: UIViewController {
    
    var firstName: String!
    
    @IBOutlet weak var secondNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "toThirdScreen", let thirdVC =
            segue.destination as? ThirdScreen {
            thirdVC.firstName = firstName
            thirdVC.secondName = secondNameTextField.text
        }
    }

}
