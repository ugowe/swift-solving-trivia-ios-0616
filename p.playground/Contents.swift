//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let alice = [5, 6, 7]
let bob = [3, 6, 10]

var aliceScore = 0
var bobScore = 0


for i in 0..<alice.count {
    var aliceIter = alice[i]
    var bobIter = bob[i]
    
    if aliceIter > bobIter {
        aliceScore += 1
    } else if aliceIter < bobIter {
        bobScore += 1
    }
    
    print(aliceScore, bobScore)
}

//func pulseTextField(textField: UITextField {
//    UIView.animatedWithDuration(.025, delay: 0.0, options: [.Autoreverse, .Repeat], animations: {
//    
//    UIView.setAnimationRepeatCount(3.0)
//    textField.transform = CGAffineTransfromMakeScale(0.98, .98))
//    textField.backgroundColor = UIColor.redColor()
//    self.view.layoutIfNeeded()
//    
//    }) { (true) in
//    
//    textField.transform = CGAffineTransfromMakeScale
//    }
//    }

let scores = [0,28,124]
let words = scores.map { NSNumberFormatter.localizedStringFromNumber($0,
    numberStyle: .SpellOutStyle) }

let works = scores.map { NSNumberFormatter.localizedStringFromNumber($0, numberStyle: .CurrencyPluralStyle) }
print(words)


















