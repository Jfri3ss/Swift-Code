struct SwiftBank { 
private let password: String 

init(password: String, initialDeposit: Double) { 
  self.password = "Strong@Password1"
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
  let deposit = deposit + (deposit * SwiftBank.depositBonusRate)
  return deposit
}


//Function 3 makeDeposit
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    finalDepositWithBonus(fromInitialDeposit: depositAmount)
      let depositWithBonus = depositAmount
      print("Making a deposit of \(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")
      balance += depositWithBonus
      //print(depositWithBonus)
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

var myAccount = SwiftBank(password: "Strong@Password1", initialDeposit: 500)

myAccount.makeDeposit(ofAmount: 50) 

myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "Strong@")


myAccount.displayBalance(usingPassword: "Deezz Nuts")
