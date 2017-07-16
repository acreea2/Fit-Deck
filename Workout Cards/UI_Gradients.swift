//
//  UIView+Extensions.swift
//  CenteredCollectionView
//
//  Created by Benjamin Emdon on 2017-01-11.
//

import UIKit

let color1a = UIColor(rgb: 0x4FE18A)
let color1b = UIColor(rgb: 0x34CECA)

let color2a = UIColor(rgb: 0xB4F871)
let color2b = UIColor(rgb: 0x73E681)

let color3a = UIColor(rgb: 0xFD6C59)
let color3b = UIColor(rgb: 0xFF7C70)

let color4a = UIColor(rgb: 0x4843ED)
let color4b = UIColor(rgb: 0x415ABD)





extension UIView {
    func applyGradient1() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        gradient.colors = [
            color1a.cgColor,
            color1b.cgColor
        ]
        layer.insertSublayer(gradient, at: 0)
    }
}


extension UIView {
    func applyGradient2() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        gradient.colors = [
            color2a.cgColor,
            color2b.cgColor
        ]
        layer.insertSublayer(gradient, at: 0)
    }
}


extension UIView {
    func applyGradient3() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        gradient.colors = [
            color3a.cgColor,
            color3b.cgColor
        ]
        layer.insertSublayer(gradient, at: 0)
    }
}

extension UIView {
    func applyGradient4() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        gradient.colors = [
            color4a.cgColor,
            color4b.cgColor
        ]
        layer.insertSublayer(gradient, at: 0)
    }
}



//extension UIColor {
//    convenience init(red: Int, green: Int, blue: Int) {
//        assert(red >= 0 && red <= 255, "Invalid red component")
//        assert(green >= 0 && green <= 255, "Invalid green component")
//        assert(blue >= 0 && blue <= 255, "Invalid blue component")
//        
//        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
//    }
//    
//    convenience init(rgb: Int) {
//        self.init(
//            red: (rgb >> 16) & 0xFF,
//            green: (rgb >> 8) & 0xFF,
//            blue: rgb & 0xFF
//        )
//    }
//}
