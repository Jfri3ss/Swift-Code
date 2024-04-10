// Write your code below 🏦

struct SwiftBank { 
private let password: String 

init(password: String) { 
  self.password = password
}

//Function
private func isValid(enteredPassword: String) -> Bool { 
    if enteredPassword == password { 
      return true 
    } else { 
    return false
  }
}

private var balance: Double = 0 

static let depositBonusRate = 0.01

}


















