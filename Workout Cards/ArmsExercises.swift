//
//  ExerciseScreenViewController.swift
//  ARMS
//
//  Created by Andrew Acree on 7/15/17.
//
//

import UIKit
import SAConfettiView

class ArmsScreenViewController: UIViewController {
    
    
    @IBOutlet weak var WorkoutWelcome: UILabel!
    @IBOutlet weak var CurrentWorkoutCard: UIView!
    
    @IBOutlet weak var NextButtonOutlet: UIButton!
    
    @IBOutlet weak var ActivityCounterLabel: UILabel!
    @IBOutlet weak var BackButtonOutlet: UIButton!
    
    @IBOutlet weak var ExerciseNumber: UILabel!
    @IBOutlet weak var ExerciseNumber2: UILabel!
    
    @IBOutlet weak var ExerciseName: UILabel!
    
    @IBOutlet weak var BackgroundView: UIView!
    
    
    // Data Properties
    // Public
    var confettiView: SAConfettiView?
    
    let library = ExerciseLibrary()
    
    var exerciseStepCount = 0
    
    var BothNumbers = ""
    
    //      Create Goal
    var WorkoutEnd = 10
    
    
    //      Functions
    //      Create Delay
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    func CardUpdateAll(){
        self.WorkoutWelcome.text = library.WelcomeArray2.randomItem()
        self.ExerciseName.text = library.ExerciseNameArray2.randomItem()
        self.BothNumbers = library.ExerciseNumberArray2.randomItem()
        self.ExerciseNumber.text = BothNumbers
        self.ExerciseNumber2.text = BothNumbers
        exerciseStepCount += 1
        print("draw card new count = \(exerciseStepCount)")
        self.ActivityCounterLabel.text = "\(exerciseStepCount) of \(WorkoutEnd)"
    }
    
    func LastCard() {
        confettiView = SAConfettiView(frame: self.view.frame)
        self.WorkoutWelcome.text = library.ExerciseExitArray2.randomItem()
        self.view.insertSubview(confettiView!, aboveSubview: self.view)
        confettiView?.startConfetti()
        print("Confetti Start")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //      How to send back to library ?
        //        var exercise = "cardio"
        
        //      Why does below break?
        //      BackgroundView.applyGradient01()
        
        
        
        //      Initial Card Update
        CardUpdateAll()
        
        
        //        Intro Message Setting
        WorkoutWelcome.alpha = 0.0
        WorkoutWelcome.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        WorkoutWelcome.frame.origin.y = self.WorkoutWelcome.frame.origin.y+50
        
        //      1 of ###
        ActivityCounterLabel.alpha = 0.0
        ActivityCounterLabel.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        // Doesnt Work        ActivityCounterLabel.frame.origin.y+200
        
        
        
        //        Button Setting
        NextButtonOutlet.alpha = 0.0
        NextButtonOutlet.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        NextButtonOutlet.frame.origin.y = self.NextButtonOutlet.frame.origin.y+50
        NextButtonOutlet.layer.borderWidth = 1
        NextButtonOutlet.layer.borderColor = UIColor.clear.cgColor
        NextButtonOutlet.layer.cornerRadius = 0.4 * NextButtonOutlet.bounds.size.width
        
        
        //        Current Workout Card
        CurrentWorkoutCard.alpha = 0.0
        CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        CurrentWorkoutCard.frame.origin.y = self.WorkoutWelcome.frame.origin.y+50
        CurrentWorkoutCard.layer.cornerRadius = 5
        CurrentWorkoutCard.layer.borderWidth = 1
        CurrentWorkoutCard.layer.borderColor = UIColor.clear.cgColor
        CurrentWorkoutCard.layer.shadowRadius = 10
        CurrentWorkoutCard.layer.shadowOpacity = 0.15
        CurrentWorkoutCard.layer.shadowOffset = CGSize(width: 5, height: 5)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //        Intro Area Welcome Message
        UIView.animate(withDuration: 1.2, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.WorkoutWelcome.alpha = 1.0
            self.WorkoutWelcome.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.WorkoutWelcome.frame.origin.y = self.WorkoutWelcome.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.8, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })
        
        
        
        //        1 of ### Intro
        UIView.animate(withDuration: 1.5, delay: 0.4, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.ActivityCounterLabel.alpha = 1.0
            self.ActivityCounterLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.ActivityCounterLabel.frame.origin.y = self.ActivityCounterLabel.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
        })
        
        
        
        // Workout Card Comes in first time
        UIView.animate(withDuration: 2.0, delay: 1.9, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.CurrentWorkoutCard.alpha = 1.0
            self.CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.CurrentWorkoutCard.frame.origin.y = self.CurrentWorkoutCard.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
        })
        
        
        //        Button Comes in
        UIView.animate(withDuration: 1.5, delay: 1.8, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.NextButtonOutlet.alpha = 1.0
            self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.NextButtonOutlet.frame.origin.y = self.NextButtonOutlet.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
        })
    } // View Did Appear End
    
    
    
    
    //      If Tapped Back Button
    @IBAction func BackButtonTapped(_ sender: Any) {
        self.dismiss(animated: true,  completion: nil)
    }
    
    
    
    //    Button Style on Tap
    @IBAction func NextButtonTouchDown(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }, completion: {
            (finished: Bool) -> Void in
        })
    }
    
    
    
    //        Next Button Motion
    @IBAction func NextButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: {
            (finished: Bool) -> Void in
        })
        
        
        //      When Goal is reached
        if exerciseStepCount == WorkoutEnd {
            print("Goal Get Ready To Exit")
            LastCard()
            
            //      Fade Card Out
            UIView.animate(
                withDuration: 0.35,
                delay: 0.0,
                //            usingSpringWithDamping: 0.3,
                //            initialSpringVelocity: 0.2,
                options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.CurrentWorkoutCard.alpha = 0.0
                    self.CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                    //                    self.CurrentWorkoutCard.frame.origin.y = self.CurrentWorkoutCard.frame.origin.y+800
                    self.CurrentWorkoutCard?.layoutIfNeeded()
                    self.BackButtonOutlet.alpha = 0.0
                    self.NextButtonOutlet.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
            })
            
            UIView.animate(withDuration: 1.2, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
                self.WorkoutWelcome.alpha = 1.0
                self.WorkoutWelcome.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.WorkoutWelcome.frame.origin.y = self.WorkoutWelcome.frame.origin.y-0
            }, completion: {
                (finished: Bool) -> Void in
            })
            
            delayWithSeconds(3.0) {
                self.dismiss(animated: true, completion: nil)
            }
        }
        
        
        if exerciseStepCount < WorkoutEnd {
            
            
            // Fade out to set the text
            UIView.animate(
                withDuration: 0.25,
                delay: 0.0,
                //            usingSpringWithDamping: 0.3,
                //            initialSpringVelocity: 0.2,
                options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.CurrentWorkoutCard.alpha = 0.0
                    self.CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                    self.CurrentWorkoutCard.frame.origin.y = self.CurrentWorkoutCard.frame.origin.y+800
                    self.CurrentWorkoutCard?.layoutIfNeeded()
            }, completion: {
                (finished: Bool) -> Void in
                
                
                //  Card Change
                self.CardUpdateAll()
                
                
                // Fade in
                UIView.animate(
                    withDuration: 0.8,
                    delay: 0.2,
                    usingSpringWithDamping: 0.8,
                    initialSpringVelocity: 0.3,
                    options: [], animations: {
                        self.CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.CurrentWorkoutCard.alpha = 1.0
                        self.CurrentWorkoutCard.frame.origin.y = 0
                        self.CurrentWorkoutCard?.layoutIfNeeded()
                        
                }, completion: nil)
            })
        } // If Ending
        
        
        
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            //            self.NextButtonOutlet.frame.origin.y = self.WorkoutWelcome.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.1, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        })
    }
}

//
//extension Array {
//    func randomItem() -> Element {
//        let index = Int(arc4random_uniform(UInt32(self.count)))
//        return self[index]
//    }
//}
