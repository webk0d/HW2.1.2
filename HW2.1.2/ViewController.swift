//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Сергей Чумаков on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        startButton.setTitle("NEXT", for: .normal)
      
        if redView.alpha == 0.5 && yellowView.alpha == 0.5 && greenView.alpha == 0.5 {
            redView.alpha = 1
        } else if redView.alpha == 1 && yellowView.alpha == 0.5 && greenView.alpha == 0.5 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if redView.alpha == 0.5 && yellowView.alpha == 1 && greenView.alpha == 0.5 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if redView.alpha == 0.5 && yellowView.alpha == 0.5 && greenView.alpha == 1 {
            redView.alpha = 1
            greenView.alpha = 0.5
        }
    }
    

}

