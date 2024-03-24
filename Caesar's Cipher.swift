//
//  Caesar's Cipher .swift
//  CodeCademy Code
//
//  Created by Jeremiah Fries on 3/23/24.
//

import Foundation
import SwiftUI

//Caesar's Cipher encryption techniques

//Alphabet array
let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//print(alphabet)

var secretMessage = "codecademy"
//print(secretMessage)

//Convert from type string to type array
var message = Array(secretMessage)
//print(message)

//Nested loops
for i in 0 ..< message.count {
  //print(i)

for j in 0 ..< alphabet.count {
    //print(j)
    if message[i] == alphabet[j] {
    message[i] = alphabet[(j+3) % 26]
    break
    }
  }
}

//Resulting encrypted message
print(message)

//Optional Challange 1 of 2
var messageToString = String(message)
print(messageToString)




















