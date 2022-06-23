# ColoursGuessing
A game where you need to press the corresponding button colour of the fruit/vegetable  that appears on the screen



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
    
![Simulator Screen Shot - iPhone 13 Pro Max - 2022-06-23 at 09 16 34](https://user-images.githubusercontent.com/106954791/175239198-50373bd8-0e76-4b1a-91ac-273c151d8e80.png)

![Simulator Screen Shot - iPhone 13 Pro Max - 2022-06-23 at 09 16 45](https://user-images.githubusercontent.com/106954791/175239328-9d50ba52-5729-44e7-a36d-e9bc49cd822c.png)


![Simulator Screen Shot - iPhone 13 Pro Max - 2022-06-23 at 09 16 53](https://user-images.githubusercontent.com/106954791/175239355-17722a1d-33e5-4d0c-8810-a0bf1dc01790.png)


