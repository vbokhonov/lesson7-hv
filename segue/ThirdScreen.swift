//
//  ThirdScreen.swift
//  segue
//
//  Created by Valentyn Bokhonov on 05.05.2021.
//

import UIKit

class ThirdScreen: UIViewController {
    
    var firstName: String!
    var secondName: String!
    
    @IBOutlet weak var firstNameLable: UILabel!
    @IBOutlet weak var secondNameLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstName = firstName {
            firstNameLable.text = firstName
        }
        if let secondName = secondName {
            secondNameLable.text = secondName
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "toHomeScreen", let firstVC =
            segue.destination as? FirstScreen {
            firstVC.firstName = firstName
            firstVC.secondName = secondName
        }
    }

}
