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
    
    @IBOutlet weak var totalExerciseCount: UILabel!
    
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
        
        
    //        Card Intros
    //        Intro Area Welcome Message
        self.Card1.alpha = 0.0
        self.Card1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.Card1.frame.origin.y = self.Card1.frame.origin.y+50
        Card1.layer.shadowRadius = 10
        Card1.layer.shadowOpacity = 0.15
        Card1.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        self.Card2.alpha = 0.0
        self.Card2.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.Card2.frame.origin.y = self.Card1.frame.origin.y+50
        Card2.layer.shadowRadius = 10
        Card2.layer.shadowOpacity = 0.15
        Card2.layer.shadowOffset = CGSize(width: 5, height: 5)
    
        
        self.Card3.alpha = 0.0
        self.Card3.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.Card3.frame.origin.y = self.Card1.frame.origin.y+50
        Card3.layer.shadowRadius = 10
        Card3.layer.shadowOpacity = 0.15
        Card3.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        self.Card4.alpha = 0.0
        self.Card4.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.Card4.frame.origin.y = self.Card1.frame.origin.y+50
        Card4.layer.shadowRadius = 10
        Card4.layer.shadowOpacity = 0.15
        Card4.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        
        
        
        // Corner Radius + Gradient
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
    
//        self.totalExerciseCount.text = MyVariables.exerciseStepCount
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.Card1.alpha = 1.0
            self.Card1.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.Card1.frame.origin.y = self.Card1.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.7, options: UIViewAnimationOptions.curveEaseIn, animations: {
                //                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 0.3, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.Card2.alpha = 1.0
            self.Card2.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.Card2.frame.origin.y = self.Card2.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.7, options: UIViewAnimationOptions.curveEaseIn, animations: {
                //                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 0.6, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.Card3.alpha = 1.0
            self.Card3.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.Card3.frame.origin.y = self.Card3.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.7, options: UIViewAnimationOptions.curveEaseIn, animations: {
                //                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 0.9, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.Card4.alpha = 1.0
            self.Card4.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.Card4.frame.origin.y = self.Card4.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.7, options: UIViewAnimationOptions.curveEaseIn, animations: {
                //                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })

        
        
        
        
        
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
