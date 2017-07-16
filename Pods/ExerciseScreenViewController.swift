//
//  ExerciseScreenViewController.swift
//  Pods
//
//  Created by Andrew Acree on 7/15/17.
//
//

import UIKit

class ExerciseScreenViewController: UIViewController {
    
    @IBOutlet weak var WorkoutWelcome: UILabel!
    @IBOutlet weak var NextButtonOutlet: UIButton!
    @IBOutlet weak var CurrentWorkoutCard: UIView!
    
    @IBOutlet weak var ExerciseNumber: UILabel!
    @IBOutlet weak var ExerciseName: UILabel!
    
    
    var welcomeArray = [String]()
    var ExerciseNameArray = [String]()
    var ExerciseNumberArray = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //                Random Inspiring Message
        let welcomeArray = ["Ready to sweat?", "You can do it!", "Harder, Better, Faster, Stronger", "Here we go!", "Let's do this!"]
        self.WorkoutWelcome.text = welcomeArray.randomItem()
        
        
        
        //        Intro Message Setting
        WorkoutWelcome.alpha = 0.0
        WorkoutWelcome.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        WorkoutWelcome.frame.origin.y = self.WorkoutWelcome.frame.origin.y+50
        
        //        WorkoutWelcome.text = Kerning.setCharacterSpacing(string: "\(WorkoutWelcome)")
        
        //        Kerning.setCharacterSpacing(string: "\(WorkoutWelcome)")
        
        
        //        Button Setting
        NextButtonOutlet.alpha = 0.0
        NextButtonOutlet.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        NextButtonOutlet.frame.origin.y = self.NextButtonOutlet.frame.origin.y+50
        NextButtonOutlet.layer.borderWidth = 1
        NextButtonOutlet.layer.borderColor = UIColor.clear.cgColor
        
        //        Trying to found the coners to circle
        //        NextButtonOutlet.frame = CGRect(x: self.NextButtonOutlet.frame.origin.x+0, y: self.NextButtonOutlet.frame.origin.y+0, width: 120, height: 120)
        //        NextButtonOutlet.clipsToBounds = true
        NextButtonOutlet.layer.cornerRadius = 0.4 * NextButtonOutlet.bounds.size.width
        
        
        //        Current Workout Card
        CurrentWorkoutCard.alpha = 0.0
        CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        CurrentWorkoutCard.frame.origin.y = self.WorkoutWelcome.frame.origin.y+50
        CurrentWorkoutCard.layer.cornerRadius = 5
        CurrentWorkoutCard.layer.borderWidth = 1
        CurrentWorkoutCard.layer.borderColor = UIColor.clear.cgColor
        
        
        
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        //        Intro Area Welcome Message
        UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.WorkoutWelcome.alpha = 1.0
            self.WorkoutWelcome.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.WorkoutWelcome.frame.origin.y = self.WorkoutWelcome.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
            
            //        Exit
            UIView.animate(withDuration: 0.3, delay: 1.7, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.WorkoutWelcome.alpha = 0.0
            }, completion: nil)
        })
        
        
        //        Button Comes in
        UIView.animate(withDuration: 1.5, delay: 1.2, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.NextButtonOutlet.alpha = 1.0
            self.NextButtonOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.NextButtonOutlet.frame.origin.y = self.NextButtonOutlet.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
        })
        
        
        
        // Workout Card Comes in first time
        UIView.animate(withDuration: 1.5, delay: 1.3, usingSpringWithDamping: 0.45, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.CurrentWorkoutCard.alpha = 1.0
            self.CurrentWorkoutCard.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.CurrentWorkoutCard.frame.origin.y = self.CurrentWorkoutCard.frame.origin.y-0
        }, completion: {
            (finished: Bool) -> Void in
        })
        
    } // View Did Appear End
    
    
    
    
    
    
    @IBAction func BackButtonTapped(_ sender: Any) {
    }
    
    
    
    @IBAction func NextButtonTapped(_ sender: Any) {
        
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
            
            
            //            Card Change
            let ExerciseNumberArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
            self.ExerciseNumber.text = ExerciseNumberArray.randomItem()
            
            let ExerciseNameArray = ["Mountain Climbers", "Crunches", "Bicycles", "Toe Touches"]
            self.ExerciseName.text = ExerciseNameArray.randomItem()
            
            
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
        
        
    }
    
    
}



extension Array {
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}


//extension RandoExercise{
//    func RandomExerciseCount() {
//        let ExerciseNumberArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//        self.ExerciseNumber.text = ExerciseNumberArray.randomItem()
//    }
//}
//
//extension RandoTitle{
//    func RandomExerciseName() {
//        let ExerciseNameArray = ["Mountain Climbers", "Crunches", "Bicycles", "Toe Touches"]
//        self.ExerciseName.text = ExerciseNameArray.randomItem()
//    }
//}



//        Kerning Fonts
//class Kerning{
//    static func setCharacterSpacing(string:String) -> NSMutableAttributedString {
//
//        let attributedStr = NSMutableAttributedString(string: string)
//        attributedStr.addAttribute(NSKernAttributeName, value: 3.25, range: NSMakeRange(0, attributedStr.length))
//        return attributedStr
//    }
//}
