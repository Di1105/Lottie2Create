//
//  ViewController.swift
//  Lottie2Create
//
//  Created by Dilara Elçioğlu on 22.12.2022.
//

import UIKit
import SnapKit
import Lottie

class ViewController: UIViewController {
    
    private var lottieAnimation = LottieAnimationView()
    let labelText = UILabel()
   // let counterLabel = UILabel()
    var counter = 0
    var timer = Timer()
    var lottieA = LottieAnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        timerLabel()

    }
    
    func setUpUI(){
        view.addSubview(lottieA)
        view.addSubview(labelText)
        //view.addSubview(counterLabel)
        
        lottieA.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(100)
        }
        lottieA.animation = LottieAnimation.named("wait")
        lottieA.contentMode = .scaleAspectFit
        lottieA.loopMode = .loop
        lottieA.play()
        
        labelText.snp.makeConstraints { make in
            make.top.equalTo(lottieA.snp.bottom).offset(30)
            make.centerXWithinMargins.equalToSuperview()
            make.height.equalTo(20)
            //make.width.equalTo(100)
        }
        /*
        counterLabel.snp.makeConstraints { make in
            make.top.equalTo(labelText.snp.bottom).offset(30)
            make.centerXWithinMargins.equalToSuperview()
            make.height.equalTo(20)
            //make.width.equalTo(100)
        }
        */
    }
    
     func timerLabel(){

          timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(printInfo), userInfo: nil, repeats: true)
    }
    
    func animateLoadLottie(){
        
    }
    
    @objc func printInfo(){
        //counterLabel.text = String(counter)
        counter = counter + 1
                if counter == 7 {
                    timer.invalidate()
                    labelText.text = "Anasayfaya yönlendiriliyorsunuz"
                }
        
    }


}

