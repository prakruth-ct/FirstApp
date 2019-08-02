//
//  ViewController.swift
//  TestApp
//
//  Created by Prakruth Nagaraj on 02/08/19.
//  Copyright © 2019 Prakruth Nagaraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showAlertWhenButtonHit(){
        
        let alert = UIAlertController(title: "First App", message: "My First App", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}

