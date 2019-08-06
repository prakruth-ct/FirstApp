//
//  ViewController.swift
//  TestApp
//
//  Created by Prakruth Nagaraj on 02/08/19.
//  Copyright © 2019 Prakruth Nagaraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider : UISlider?
    @IBOutlet weak var targetLabel: UILabel?
    @IBOutlet weak var scoreLabel: UILabel?
    @IBOutlet weak var roundLabel: UILabel?
    
    var target : Int = 0
    var round: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let sliderObj = slider{
            print("slider Init value \(sliderObj.value.rounded())")
        }
        else{
            showAlert(msg: "Restart App")
        }
        round = 0
        newRound()
    }

    @IBAction func showAlertWhenButtonHit(){
        
        print("Button 1 Pressed")
        //showAlert(msg: "\(target) \(slider?.value.rounded() ?? 0.0)")
        newRound()
        
    }
    
    func showAlert(msg : String){

        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderAction(slider : UISlider){
        
        print("Slider value \(slider.value)")
        let sliderValue = slider.value.rounded()
        
    }
    
    func newRound(){
        target = Int.random(in: 1...100)
        slider?.value = 50.0
        round += 1
//        roundLabel?.value(forKey: String(round))
//        scoreLabel?.value(forKey: String(320))
//        targetLabel?.value(forKey: String(target))
    }

}

