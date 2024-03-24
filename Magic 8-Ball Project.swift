//
//  Magic 8-Ball Project.swift
//  CodeCademy Code
//
//  Created by Jeremiah Fries on 3/23/24.
//

import Foundation
import SwiftUI

let playerName = "Steve Jobs:"
let playerQuestion = "Will it Snow before we leave for Georga?"

let randomNumber = Int.random(in: 1...9)
let eightBall: String
let eightBallAnswer = "Magic 8 Ball's Answer:"

//Print out random number
//print(randomNumber)

if playerName == "" {
   //print(playerQuestion)
} else {
   //print(playerName, playerQuestion)
}

//Challange convert the if/else into a ternary operation
playerName == "" ? print(playerQuestion) : print(playerName, playerQuestion)

//print("\(playerName) asks: \(playerQuestion)")

switch randomNumber {
  case 1:
    eightBall = "Yes - definitely"
    print(eightBallAnswer, eightBall)
  case 2:
    eightBall = "It is decidedly so"
    print(eightBall)
  case 3:
    eightBall = "Without a doubt"
    print(eightBallAnswer, eightBall)
  case 4:
    eightBall = "Reply hazy, try again"
    print(eightBallAnswer, eightBall)
  case 5:
    eightBall = "Ask again later"
    print(eightBallAnswer, eightBall)
  case 6:
    eightBall = "Better not tell you now"
    print(eightBallAnswer, eightBall)
  case 7:
    eightBall = "My sources say no"
    print(eightBallAnswer, eightBall)
  case 8:
    eightBall = "Outlook not so good"
    print(eightBallAnswer, eightBall)
  case 9:
    eightBall = "Very doubtful"
    print(eightBallAnswer, eightBall)
default:
    eightBall = "Error"
    print(eightBallAnswer, eightBall)
}

//print("Magic 8 Ball's answer: \(eightBall)'")













