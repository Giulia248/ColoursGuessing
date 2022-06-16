//
//  ViewController2.swift
//  ColoursGuessing
//
//  Created by user on 16/06/22.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()

        typeTextField.isHidden = true
        sendButtonOutlet.isHidden = true
        apple.isHidden = true
        onion.isHidden = true
        banana.isHidden = true
        blueberry.isHidden = true
        orange.isHidden = true
        
        
        
    }
    
    
   
    @IBOutlet var risultatiButton: UIButton!
    @IBOutlet var typeTextField: UITextField!
    @IBOutlet var sendButtonOutlet: UIButton!
    @IBOutlet var labelSecond: UILabel!
    @IBAction func sendButton(_ sender: UIButton) {
        arrayFruttiUser.append(typeTextField.text!)
        typeTextField.text = ""
    }
    //variabili
    public var arrayFrutti: [String] = []
    public var arrayFruttiUser: [String] = []
    
    //timer1 40 sec contatore
    var timer1 : Timer!
    var ck = 0
    @objc func startGame(){
        if ck <= 20{
            print("debug 4")
            print(ck)
            ck += 1
            labelSecond.text = String(ck - 1)
        }else if ck == 21{
            print("debug 3")
            timer1.invalidate()
            apple.isHidden = true
            banana.isHidden = true
            onion.isHidden = true
            blueberry.isHidden = true
            orange.isHidden = true
            typeTextField.isHidden = true
            sendButtonOutlet.isHidden = true
            var points = 0
            var ck3 = 0
            for el in arrayFrutti{
                if el == arrayFruttiUser[ck3]{
                    points += 1
                    ck3 += 1
                }
            }
            labelSecond.text = "hai totalizzato \(points) punti!"
            
        }
    }
    
    //timer 2 sec frutti
    var timer2 : Timer!
    var ck2 = 0
    @objc func startFrutta(){
        if ck2 <= 9{
            
            print("debug 5")
            let r = Int.random(in: 1...5)
            switch r {
            case 1:
                arrayFrutti.append("apple")
                
                apple.isHidden = false
                banana.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = true
                orange.isHidden = true
                
            case 2:
                arrayFrutti.append("banana")
                
                banana.isHidden = false
                apple.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = true
                orange.isHidden = true
            case 3:
                arrayFrutti.append("onion")
                
                apple.isHidden = true
                banana.isHidden = true
                onion.isHidden = false
                blueberry.isHidden = true
                orange.isHidden = true
            case 4:
                arrayFrutti.append("blueberry")
                
                apple.isHidden = true
                banana.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = false
                orange.isHidden = true
            case 5:
                arrayFrutti.append("orange")
               
                apple.isHidden = true
                banana.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = true
                orange.isHidden = false
            default: print("")
            }
            ck2 += 1
            labelSecond.text = String(ck - 1)
        }else if ck2 == 10{
            print("debug 6")
            timer2.invalidate()
        }
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
        print("debug 1")
        start1()
      

    }
    
    
    func start1(){
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startGame), userInfo: nil, repeats: true)
        //textfield e send button
        typeTextField.isHidden = false
        sendButtonOutlet.isHidden = false
        startGameButtonOutlet.isHidden = true
        //timer frutti
        timer2 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(startFrutta), userInfo: nil, repeats: true)
    }



  
    

    
     
     
     
}

