# ColoursGuessing
A game where you need to write the color that appears on the screen




https://user-images.githubusercontent.com/106954791/174104585-68942f62-fdeb-462e-808e-8258d82879a5.mov

how to use a timer function

'''

    //timer1 metod
     var timer1 : Timer!
     var ck = 0
    @objc func timerMethod(){
       if ck <= 20{
          //instruction
       }else if ck == 21{
              //instructions
              timer1.invalidate()
            }
        }
    
    //how to create the timer and start it
    
    timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerMethod), userInfo: nil, repeats: true)
'''
    
