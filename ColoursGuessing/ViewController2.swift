//
//  ViewController2.swift
//  ColoursGuessing
//
//  Created by user on 16/06/22.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        stringTextField.isHidden = true
        sendButtonOutlet.isHidden = true
        apple.isHidden = true
        onion.isHidden = true
        banana.isHidden = true
        blueberry.isHidden = true
        orange.isHidden = true
    }
    
    
    
    
    //immagini
    @IBOutlet var apple: UIImageView!
    @IBOutlet var banana: UIImageView!
    @IBOutlet var orange: UIImageView!
    @IBOutlet var onion: UIImageView!
    @IBOutlet var blueberry: UIImageView!
    
    
    
    //bottone start game
    @IBOutlet var startGameButtonOutlet: UIButton!
    @IBAction func startGameButton(_ sender: UIButton) {
        startGameButtonOutlet.isHidden = true
        print("debug 1")
    }
    
    //textfield e send button
    
    @IBOutlet var stringTextField: UITextField!
    
    @IBOutlet var sendButtonOutlet: UIButton!
    @IBAction func sendButton(_ sender: UIButton) {
        
    }
    
    
    
    
    //timer stopper func
    @objc func updateTimer(timer : Timer, counter : Int){
        
        var c = 0
        while (c != counter){
            c += 1
            if(counter == 40){
                timer.invalidate()
            }
        }
   
    }
    func startGame() -> Bool{
        //variabili
        var arrayFrutti: [String] = []
        var arrayFruttiUser: [String] = []
        
        //starting timer
        var timer1: Timer! = Timer.scheduledTimer(timeInterval : 1.0 , target : ViewController2.self , selector : #selector(updateTimer), userInfo : nil , repeats : true)
        

         
        
        
        
        return true
    }
    
    
    
    

    
     
     
     
}

