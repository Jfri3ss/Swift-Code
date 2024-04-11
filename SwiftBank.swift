struct SwiftBank { 
private let password: String 

init(password: String, initialDeposit: Double) { 
  self.password = "Deezz Nuts"
  //Function call inside init method, after password is initalized
  makeDeposit(ofAmount: initialDeposit)
}

//Function 1 also known as a helper method, checks for valid password (validator function)
private func isValid(enteredPassword: String) -> Bool { 
    if enteredPassword == password { 
      return true 
    } else { 
    return false
  }
}

private var balance: Double = 0 { 
  //property observer
didSet {
  if balance < 100 { 
  displayLowBalanceMessage()
  }
  }
}

static let depositBonusRate = 0.01

//Function 2 finalDepositWithBonus
private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
  var depositPlusBonus = ((deposit * SwiftBank.depositBonusRate) + deposit)
  return deposit
}


//Function 3 makeDeposit
  mutating func makeDeposit(ofAmount deposit: Double) {
    finalDepositWithBonus(fromInitialDeposit: deposit)
      let depositWithBonus = deposit
      print("Making a deposit of \(deposit) with a bonus rate. The final amount deposited is \(depositWithBonus)")
      balance = depositWithBonus
}


//Function 4 displayBalance
  func displayBalance(usingPassword password: String) { 
    var isValidUser = isValid(enteredPassword: password) 
    if isValidUser == false { 
        print("Error: Invalid password. Cannot retrieve balance.")
    } else { 
        print("Your current balance is \(balance)")
    }
}

//Function 5 makeWithdrawal
func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) { 
    var isValidUser = isValid(enteredPassword: password)
    if isValidUser == false {
      print("Error: Invalid password. Cannot make withdrawal.")
    } else { 
      print("Making a $\(withdrawalAmount) withdrawal")
    }
  }

//Function 6 displayLowBalanceMessage
private func displayLowBalanceMessage() { 
print("Alert: Your balance is under $100")
  }
}

var myAccount = SwiftBank(password: "Deezz Nuts", initialDeposit: 500)

//myAccount = SwiftBank(password: "Deezz Nuts", initialDeposit: 50)










