//
//  ViewController.swift
//  ios animations
//
//  Created by Sumit Nihalani on 17/02/19.
//  Copyright © 2019 Zoho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollupView: UIView!
    @IBOutlet weak var darkAreaView: UIView!
    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        darkAreaView.layer.cornerRadius = 22
        greetingLabel.alpha = 0
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        greetingLabel.text = "Hello World!"
        if darkAreaView.transform == .identity{
            UIView.animate(withDuration: 1, animations: {
                self.darkAreaView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.scrollupView.transform = CGAffineTransform(translationX: 0, y: -100)
                self.arrowButton.transform = CGAffineTransform(rotationAngle: (-180 * CGFloat.pi / 180))
                self.greetingLabel.alpha = 1
            }) { (true) in
            }
        }
        else{
            
            greetingLabel.text = "Bye World!"
            UIView.animate(withDuration: 1, animations: {
                self.darkAreaView.transform = .identity
                self.scrollupView.transform = .identity
                self.arrowButton.transform = .identity
                self.greetingLabel.alpha = 0
            }) { (true) in
            }
        }
        
    }
    

}

