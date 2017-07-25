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
    
    
    
//    var Greeting:String
//    init(Greeting:String){
//        self.Greeting = Greeting
//    }
    
static var exerciseStepCount = 0
//    var testVariable: String

//    static let testVariable: String = "name"
static var testVariable = "Tester"    

    

// ** Cardio **
static let welcomeArray1 = ["Ready to sweat?!!!", "You can do it!!!!", "Harder, Better, Faster, Stronger!!!", "Here we go!!!!", "Let's do this!!!!"]
//        Greeting: = welcomeArray1.randomItem()

static let ExerciseNameArray1 = ["Mountain Climbers", "Crunches", "Bicycles", "Toe Touches"]
//        self.ExerciseName.text = ExerciseNameArray.randomItem()

static let ExerciseNumberArray1 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//        self.ExerciseNumber.text = ExerciseNumberArray.randomItem()



// ** Arms **
static let welcomeArray2 = ["Lets get cut", "Hope you can work tomorrow", "Push that earth down"]
//        self.WorkoutWelcome.text = welcomeArray1.randomItem()

static let ExerciseNameArray2 = ["Pushups", "Dips", "Jumping Jacks", "Bombers"]
//        self.ExerciseName.text = ExerciseNameArray.randomItem()

static let ExerciseNumberArray2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
//        self.ExerciseNumber.text = ExerciseNumberArray.randomItem()

}

//var mainInstance = ExerciseLibrary(Greeting:"welc")


open class WorkoutDictionary: NSObject {
    
    
}

// Random
extension Array {
    func randomItem2() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}




