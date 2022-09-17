//
//  ViewController.swift
//  HelloWorld
//
//  Created by Наталия on 13.09.2022.
//

import UIKit
enum TrafficLight {
    case red
    case yellow
    case green
}
class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var light: Optional<TrafficLight> = nil
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        guard let light = light else {
            light = .red
            redView.alpha = 1
            nextButton.setTitle("Next", for: .normal)
            return
        }
        
        
        switch light {
        case.red:
            self.light = .yellow
            yellowView.alpha = 1
            greenView.alpha = 0.3
            redView.alpha = 0.3
        case.yellow:
            self.light = .green
            greenView.alpha = 1
            redView.alpha = 0.3
            yellowView.alpha = 0.3
        case.green:
            self.light = .red
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
       
        }
    
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    

}

