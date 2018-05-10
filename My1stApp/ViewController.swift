//
//  ViewController.swift
//  My1stApp
//
//  Created by Foundation_26 on 08/05/2018.
//  Copyright © 2018 Foundation_26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var colorLabel: UILabel!
    
    var colorCounter = 0
    
    let colors = [(UIColor.blue, "Azul"),
                  (UIColor.purple, "Roxo"),
                  (UIColor.green, "Verde"),
                  (UIColor.orange, "Laranja")]
    
    @IBOutlet weak var switchPage: UISwitch!
    
    @IBAction func buttonGo(_ sender: UIButton) {
        
        if switchPage.isOn{
            performSegue(withIdentifier: "paraTela2", sender: self)
        }else{
            performSegue(withIdentifier: "paraTela3", sender: self)
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        if colorCounter == colors.count {
            colorCounter = 0
        }
        
        colorLabel.text = colors[colorCounter].1
        self.view.backgroundColor = colors[colorCounter].0
        colorCounter += 1

    }

}


