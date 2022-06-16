//
//  ViewController.swift
//  ColoursGuessing
//
//  Created by user on 16/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    //attributi
    let text = "Program written by Giulia, this is a demo for didactic purpose, click again to show the rules"
    let text2 = "Once the image appears, write the colour in the Text Field and press 'send'"
    var check = true
    
    //about
    @IBOutlet var labelAbout: UILabel!
    
    @IBAction func buttonAbout(_ sender: UIButton) {
        if check{
            labelAbout.text = text
            check = false
        }else{
            labelAbout.text = text2
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

