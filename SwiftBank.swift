// Write your code below 🏦

struct SwiftBank { 
private let password: String 

init(password: String, initialDeposit: Double) { 
  self.password = password
  makeDeposit(ofAmount: initialDeposit)
}


//Function also known as a helper method
private func isValid(enteredPassword: String) -> Bool { 
    if enteredPassword == password { 
      return true 
    } else { 
    return false
  }
}

private var balance: Double = 0 

static let depositBonusRate = 0.01

private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    var newDepositValue = (deposit *  0.01)
        return newDepositValue
}

  mutating func makeDeposit(ofAmount depositAmount: Double) {
    finalDepositWithBonus(fromInitialDeposit: depositAmount)
      let depositWithBonus = depositAmount
      print("Making a deposit of \(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")
      balance = depositWithBonus
  }
}
