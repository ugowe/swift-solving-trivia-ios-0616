//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    /*
     
     write your function here
     
     */
    func solveTrivia(statesAndCapitals : [String: String]) -> String {
        
        var isMatch = false
        
        for (state, capital) in statesAndCapitals {
            
            let stateArray = Set(state.lowercaseString.characters).sort()
            let capitalArray = Set(capital.lowercaseString.characters).sort()
            isMatch = (stateArray.map { capitalArray.contains($0) }).contains(true)
            
            if !isMatch {
                
                return state
            }
        
        }
        
        return "No answer found"
        
    }


}

