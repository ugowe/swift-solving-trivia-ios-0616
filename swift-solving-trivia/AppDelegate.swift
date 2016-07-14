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
    
    func applicationDidFinishLaunching(application: UIApplication) {
        
    
    
    let statesAndCapitals  = [
        "Alabama":"Montgomery",
        "Alaska":"Juneau",
        "Arizona":"Phoenix",
        "Arkansas":"Little Rock",
        "California":"Sacramento",
        "Colorado":"Denver",
        "Connecticut":"Hartford",
        "Delaware":"Dover",
        "Florida":"Tallahassee",
        "Georgia":"Atlanta",
        "Hawaii":"Honolulu",
        "Idaho":"Boise",
        "Illinois":"Springfield",
        "Indiana":"Indianapolis",
        "Iowa":"Des Moines",
        "Kansas":"Topeka",
        "Kentucky":"Frankfort",
        "Lousiana":"Baton Rouge",
        "Maine":"Augusta",
        "Maryland":"Annapolis",
        "Massassachusetts":"Boston",
        "Michigan":"Lansing",
        "Minnesota":"Saint Paul",
        "Mississippi":"Jackson",
        "Missouri":"Jefferson City",
        "Montana":"Helena",
        "Nebraska":"Lincoln",
        "Nevada":"Carson City",
        "New Hampshire":"Concord",
        "New Jersey":"Trenton",
        "New Mexico":"Santa Fe",
        "New York":"Albany",
        "North Carolina":"Raleigh",
        "North Dakota":"Bismarck",
        "Ohio":"Columbus",
        "Oklahoma":"Oklahoma City",
        "Oregon":"Salem",
        "Pennsylvania":"Harrisburg",
        "Rhode Island":"Providence",
        "South Carolina":"Columbia",
        "South Dakota":"Pierre",
        "Tennessee":"Nashville",
        "Texas":"Austin",
        "Utah":"Salt Lake City",
        "Vermont":"Montpelier",
        "Virgina":"Richmond",
        "Washington":"Olympia",
        "West Virginia":"Charleston",
        "Wisconsin":"Madison",
        "Wyoming":"Cheyenne"]
        solveTrivia(statesAndCapitals)
    }
    
    func solveTrivia(statesAndCaps: [String: String]) -> String {
        var solution : String = ""
//        let state = ""
//        let capital = ""
        for (state, capital) in statesAndCaps {
            
            var matchFound = false
            
            let stateLower = state.lowercaseString
            let capitalLower = capital.lowercaseString
            
            let stateArray = Array(stateLower.characters)
            let capitalArray = Array(capitalLower.characters)
            
            for i in stateArray {
                for n in capitalArray {
                    if i == n {
                        matchFound = true
                    }
                }
            }
            
            if (!matchFound) {
                solution = state
            }
            
        }
        return solution
    }
}



