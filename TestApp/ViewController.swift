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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let sliderObj = slider{
            print("slider Init value \(sliderObj.value.rounded())")
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Restart App", preferredStyle: .alert)
            let action = UIAlertAction(title: "Close", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func showAlertWhenButtonHit(){
        
        print("Button 1 Pressed")
        let alert = UIAlertController(title: "First App", message: "My First App", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
//    @IBAction func showAlert(msg : String){
//
//        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
//        let action = UIAlertAction(title: "Close", style: .default, handler: nil)
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
//    }
    
    @IBAction func sliderAction(slider : UISlider){
        
        print("Slider value \(slider.value)")
        let sliderValue = slider.value.rounded()
        
    }

}

