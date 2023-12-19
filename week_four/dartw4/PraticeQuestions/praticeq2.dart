class BankAccount {
  double balance;
  String accountNumber;

  BankAccount(this.balance, this.accountNumber);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful. New balance: $balance");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. New balance: $balance");
    } else {
      print("Invalid withdrawal amount or insufficient funds.");
    }
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(double balance, String accountNumber, this.transactionLimit)
      : super(balance, accountNumber);

  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance && amount <= transactionLimit) {
      balance -= amount;
      print("Checking withdrawal successful. New balance: $balance");
    } else {
      print("Invalid withdrawal amount, insufficient funds, or exceeded transaction limit.");
    }
  }
}

void main() {
  BankAccount account = BankAccount(1000.0, "123456");
  CheckingAccount checkingAccount = CheckingAccount(1500.0, "789012", 500.0);

  account.deposit(200.0);
  account.withdraw(150.0);

  checkingAccount.deposit(300.0);
  checkingAccount.withdraw(200.0);
  checkingAccount.withdraw(600.0);
}
