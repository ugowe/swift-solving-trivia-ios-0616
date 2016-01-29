//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by iOS Staff on 1/28/16
//  Copyright (c) 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(statesAndCapitals : [String : String]) -> String {
        
        var answer = ""
        
        for (state, capital) in statesAndCapitals {
            
            let aState = state.lowercaseString
            let aCapital = capital.lowercaseString
            
            var match = false
            for stateChar in aState.characters {
                for capitalChar in aCapital.characters {
                    if stateChar == capitalChar {
                        match = true
                    }
                }
            }
            if !match {
                
                answer = state
                
            }
            
        }
        
        return answer
        
    }
}
