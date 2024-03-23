//
//  Project 1 Quadratic Equation
//  CodeCademy Code
//
//  Created by Jeremiah Fries on 3/23/24.
//

import Foundation
import SwiftUI

// Quadratic Equation

var a: Double = 3
var b: Double = -11
var c: Double = -4

var root1: Double = (b*b) - (4*a*c)
var root2: Double = (b*b) - (4*a*c)

//Square root function
let resultRoot1 = root1.squareRoot()

//Divide result by 2a
root1 = -b + resultRoot1
root1 = root1 / (2*a)


let resultRoot2 = root2.squareRoot()

root2 = -b - resultRoot2
root2 = root2 / (2*a)

print("Root 1 is \(root1)")
print("Root 2 is \(root2)")













