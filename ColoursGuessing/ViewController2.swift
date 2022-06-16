//
//  ViewController2.swift
//  ColoursGuessing
//
//  Created by user on 16/06/22.
//

import UIKit
import Darwin

class ViewController2: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        apple.isHidden = true
        onion.isHidden = true
        banana.isHidden = true
        blueberry.isHidden = true
        orange.isHidden = true
    }
    
    
   
    @IBOutlet var risultatiButton: UIButton!
    @IBOutlet var sendButtonOutlet: UIButton!
    @IBOutlet var labelSecond: UILabel!
    
    var ck4 = 0
    var ck5 = 0
    @IBAction func yellowButton(_ sender: UIButton) {
        if ck5 != 10{
            arrayFruttiUser[ck5] = "yellow"
            ck5 += 1
        }
        
    }
    @IBAction func redButton(_ sender: UIButton) {
        if ck5 != 10{
            arrayFruttiUser[ck5] = "red"
            ck5 += 1
        }
    }
    @IBAction func purpleButton(_ sender: UIButton) {
        if ck5 != 10{
            arrayFruttiUser[ck5] = "purple"
            ck5 += 1
        }
    }
    @IBAction func blueButton(_ sender: UIButton) {
        if ck5 != 10{
            arrayFruttiUser[ck5] = "blue"
            ck5 += 1
        }
    }
    @IBAction func orangeButton(_ sender: UIButton) {
        if ck5 != 10{
            arrayFruttiUser[ck5] = "orange"
            ck5 += 1
        }
    }
    
    //variabili
    public var arrayFrutti: [String] = []
    public var arrayFruttiUser: [String] = Array(repeating: "", count: 15)
    
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
                arrayFrutti.append("red")
                ck4 += 1
                apple.isHidden = false
                banana.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = true
                orange.isHidden = true
                
            case 2:
                arrayFrutti.append("yellow")
                ck4 += 1
                banana.isHidden = false
                apple.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = true
                orange.isHidden = true
            case 3:
                arrayFrutti.append("purple")
                ck4 += 1
                apple.isHidden = true
                banana.isHidden = true
                onion.isHidden = false
                blueberry.isHidden = true
                orange.isHidden = true
            case 4:
                arrayFrutti.append("purple")
                ck4 += 1
                apple.isHidden = true
                banana.isHidden = true
                onion.isHidden = true
                blueberry.isHidden = false
                orange.isHidden = true
            case 5:
                arrayFrutti.append("orange")
               ck4 += 1
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
    
    //timer stop game
    var timer3 : Timer!
    var ck6 = 0
    @objc func stopGameTimer(){
        
        if ck6 <= 25{
            ck6 += 1
        }else{
            exit(0)
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
        stopGame()
      

    }
    
    
    func start1(){
        
        startGameButtonOutlet.isHidden = true
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startGame), userInfo: nil, repeats: true)
        
        //timer frutti
        timer2 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(startFrutta), userInfo: nil, repeats: true)
    }
    
    func stopGame(){
        //timer frutti
        timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(stopGameTimer), userInfo: nil, repeats: true)
    }



  
    

    
     
     
     
}

