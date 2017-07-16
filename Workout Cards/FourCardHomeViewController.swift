//
//  FourCardHomeViewController.swift
//  Workout Cards
//
//  Created by Andrew Acree on 7/15/17.
//  Copyright © 2017 Acray. All rights reserved.
//

import UIKit

class FourCardHomeViewController: UIViewController {

    
    @IBOutlet weak var Card1: UIView!
    @IBOutlet weak var Card2: UIView!
    @IBOutlet weak var Card3: UIView!
    @IBOutlet weak var Card4: UIView!
    
    
    
    
    
    
    let color1a = UIColor(rgb: 0x4FE18A)
    let color1b = UIColor(rgb: 0x34CECA)
    

    
//    var gradientLayer1: CAGradientLayer!
//    
//    func createGradientLayer() {
//        gradientLayer1 = CAGradientLayer()
//        gradientLayer1.frame = self.view.bounds
//        
//        gradientLayer1.colors = [color1a, color1b]
//        
//        view.layer.addSublayer(gradientLayer1)
////        self.Card1.layer.addSublayer(gradientLayer1)
//    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        Card1.layer.cornerRadius = 10
        Card1.layer.borderWidth = 1
        Card1.layer.borderColor = UIColor.clear.cgColor
        Card1.applyGradient1()

        
        Card2.layer.cornerRadius = 10
        Card2.layer.borderWidth = 1
        Card2.layer.borderColor = UIColor.clear.cgColor
        Card2.applyGradient2()
        
        Card3.layer.cornerRadius = 10
        Card3.layer.borderWidth = 1
        Card3.layer.borderColor = UIColor.clear.cgColor
        Card3.applyGradient3()
        
        Card4.layer.cornerRadius = 10
        Card4.layer.borderWidth = 1
        Card4.layer.borderColor = UIColor.clear.cgColor
        Card4.applyGradient4()
        
        
        
        
    }


    
    @IBAction func ButtonCard1(_ sender: Any) {
    }
    

    

    
}







extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
