//
//  Morse Decoder.swift
//  CodeCademy Code
//
//  Created by Jeremiah Fries on 3/23/24.
//

import Foundation
import SwiftUI

var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

var letterToMorse: [String: String] = [
  "a": "·−",
  "b": "−···",
  "c": "−·−·",
  "d": "−··",
  "e": "·",
  "f": "··−·",
  "g": "−−·",
  "h": "····",
  "i": "··",
  "j": "·−−−",
  "k": "−·−",
  "l": "·−··",
  "m": "−−",
  "n": "−·",
  "o": "−−−",
  "p": "·−−·",
  "q": "−−·−",
  "r": "·−·",
  "s": "···",
  "t": "−",
  "u": "··−",
  "v": "···−",
  "w": "·−−",
  "x": "−··−",
  "y": "−·−−",
  "z": "−−··"
]

//print(letterToMorse)

//Store encrypted message here
var morseText = ""
var decodedMessage = ""
//Remember to use correct Array Syntax
var morseCodeArray = [String]()
var currMorse = ""

for element in englishText {
if let morseChar = letterToMorse["\(element)"] {
  morseText += morseChar + " "
  } else {
  morseText += "   "
  }
}
//print(morseText)

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
  switch currMorse {
    case "":
      currMorse += " "
    case " ":
      morseCodeArray.append(" ")
      currMorse = ""
    default:
      morseCodeArray.append(currMorse)
      currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)
//print(morseCodeArray)


var morseToLetter: [String: String] = [:]

//Review you mixed up the order of your key and values in (letter, morseChar)
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}

print(decodedMessage)










