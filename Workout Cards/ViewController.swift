//
//  ViewController.swift
//  Workout Cards
//
//  Created by Andrew Acree on 12/12/16.
//  Copyright © 2016 Acray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NextButtonOutlet: UIButton!
    @IBOutlet weak var labelExercise: UILabel!
    
    @IBOutlet weak var exerciseCard: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NextButtonOutlet.layer.cornerRadius = 5
        NextButtonOutlet.layer.borderWidth = 1
        NextButtonOutlet.layer.borderColor = UIColor.clear.cgColor
        
        exerciseCard.layer.cornerRadius = 5
        exerciseCard.layer.borderWidth = 1
        exerciseCard.layer.borderColor = UIColor.clear.cgColor
    }
    
    
    
    //    Workout Options
    enum workout: UInt32 {
        case Crunches
        case Pushups
        case Burpees
        case MountainClimbers
        case Squats
        case Dips
        
        private static let _count: workout.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let workoutValue = workout(rawValue: maxValue) {
                maxValue += 1
            }
            return maxValue
        }()
        
        static func randomPick() -> workout {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return workout(rawValue: rand)!
        }
    }
    
    
    
    //    Number Options
    enum number: UInt32 {
        case One
        case Two
        case Fifteen
        case Twenty
        case TwentyFive
        
        private static let _count: number.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let _ = number(rawValue: maxValue) {
                maxValue += 1
            }
            return maxValue
        }()
        
        static func randomPick() -> number {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return number(rawValue: rand)!
        }
        
    }
    
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        // Fade out to set the text
        UIView.animate(
            withDuration: 0.25,
            delay: 0.0,
//            usingSpringWithDamping: 0.3,
//            initialSpringVelocity: 0.2,
            options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.exerciseCard.alpha = 0.5
                self.exerciseCard.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                self.exerciseCard.frame.origin.y = 600
                self.exerciseCard?.layoutIfNeeded()
        }, completion: {
            (finished: Bool) -> Void in
            
            //Once the label is completely invisible, set the text and fade it back in
            
            // Creating item to print
            let numberTemp = number.randomPick()
            
            let numberWorkout = workout.randomPick()
            
            // Printing on Label
            self.labelExercise.text = "\(numberTemp) \(numberWorkout) "
            
            
            // Fade in
            UIView.animate(
                withDuration: 0.8,
                delay: 0.0,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0.3,
                options: [], animations: {
                self.exerciseCard.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.exerciseCard.alpha = 1.0
                self.exerciseCard.frame.origin.y = -600
                self.exerciseCard?.layoutIfNeeded()
                    
            }, completion: nil)
        })
    }
    
    
    
    
    
    
    
    
}
