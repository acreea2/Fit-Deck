//
//  ExerciseLibrary.swift
//  Workout Cards
//
//  Created by Andrew Acree on 7/16/17.
//  Copyright © 2017 Acray. All rights reserved.
//

import Foundation
import UIKit

open class ExerciseLibrary {
    
//    var exerciseStepCount = 0

//    var testVariable = "Tester"

//    var samplenumber = "\(ExerciseScreenViewController().exerciseStepCount)"
    var currentExercise = String.self

    
    var MasterCount = 0
    
    
    
    
    // ** Core Deck **
     let WelcomeArray1 = ["Ready to sweat?!!!", "You can do it!!!!", "Harder, Better, Faster, Stronger!!!", "Here we go!!!!", "Let's do this!!!!"]
    //            Greeting = welcomeArray1.randomItem()
    
     let ExerciseNameArray1 = ["Mountain Climbers", "Crunches", "Bicycles", "Toe Touches"]
    //        self.ExerciseName.text = ExerciseNameArray.randomItem()
    
     let ExerciseNumberArray1 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
    //        self.ExerciseNumber.text = ExerciseNumberArray.randomItem()
    
     let ExerciseExitArray1 = ["Great job! Now just don't drop your phone.", "You made it!", "You made those look easy.", "You just burned like 100,000 calores."]
    
    
    
    // ** Arms Deck **
     let WelcomeArray2 = ["Lets get cut", "Hope your arms work tomorrow", "Push that earth down"]
//    self.WorkoutWelcome.text = welcomeArray2.randomItem()
    
     let ExerciseNameArray2 = ["Pushups", "Dips", "Planks", "Bombers"]
//    self.ExerciseName.text = ExerciseNameArray2.randomItem()
    
     let ExerciseNumberArray2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//    self.ExerciseNumber.text = ExerciseNumberArray2.randomItem()
    
     let ExerciseExitArray2 = ["Great job! Now just don't drop your phone.", "You made it!", "You made those look easy."]
    
    
    
    // ** Cardio Deck **
    let WelcomeArray3 = ["Ready to sweat?!!!", "You can do it!!!!", "Harder, Better, Faster, Stronger!!!", "Here we go!!!!", "Let's do this!!!!"]
//    Greeting = welcomeArray3.randomItem()
    
    let ExerciseNameArray3 = ["Mountain Climbers", "Crunches", "Bicycles", "Burpees"]
//    self.ExerciseName.text = ExerciseNameArray3.randomItem()
    
    let ExerciseNumberArray3 = ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//    self.ExerciseNumber.text = ExerciseNumberArray3.randomItem()
    
    let ExerciseExitArray3 = ["Great job! Now just don't drop your phone.", "You made it!", "You made those look easy.", "You just burned like 100,000 calores."]
    
    
    
    // ** Legs Deck **
     let WelcomeArray4 = ["Ready to sweat?!!!", "You can do it!!!!", "Harder, Better, Faster, Stronger!!!", "Here we go!!!!", "Let's do this!!!!"]
//    Greeting = welcomeArray4.randomItem()
    
     let ExerciseNameArray4 = ["Calf Raises", "Jump Squats", "Jumping Jacks", "High Knees"]
//    self.ExerciseName.text = ExerciseNameArray4.randomItem()
    
     let ExerciseNumberArray4 = ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//    self.ExerciseNumber.text = ExerciseNumberArray4.randomItem()
    
     let ExerciseExitArray4 = ["Great job! Now just don't drop your phone.", "You made it!", "You made those look easy.", "You just burned like 100,000 calores."]
    
    
    // ** Legs Deck **
    let WelcomeArray5 = ["Let's get flipping!", "Flow as you go"]
    //    Greeting = welcomeArray4.randomItem()
    
    let ExerciseNameArray5 = ["PK Pushups", "Handstand", "Dive Rolls", "QMs"]
    //    self.ExerciseName.text = ExerciseNameArray4.randomItem()
    
    let ExerciseNumberArray5 = ["5", "6", "7", "8", "9", "10"]
    //    self.ExerciseNumber.text = ExerciseNumberArray4.randomItem()
    
    let ExerciseExitArray5 = ["Great job! Now just don't drop your phone.", "You made it!", "You made those look easy.", "You just burned like 100,000 calores."]
    
    
}

    

    
//    func CardUpdateAll() {
//        WorkoutWelcome.text = WelcomeArrayCore.randomItem()
//        ExerciseName.text = ExerciseNameArrayCore.randomItem()
//        BothNumbers = ExerciseNumberArrayCore.randomItem()
//        ExerciseNumber.text = BothNumbers
//        ExerciseNumber2.text = BothNumbers
//        //            self.ActivityCounterLabel.text = "\"exerciseStepCount" of 10"
//        self.ActivityCounterLabel.text = "\(exerciseStepCount) of \(WorkoutEnd)"
//        print("draw card")
//    }




// Random
extension Array {
    func randomItem2() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}




