import 'dart:io';

class BankAccount {
  late double balance;
  late String accountNumber;

  BankAccount(this.balance, this.accountNumber);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid withdrawal amount or insufficient balance.");
    }
  }
}

class CheckingAccount extends BankAccount {
  late double transactionLimit;

  CheckingAccount(double balance, String accountNumber, this.transactionLimit)
      : super(balance, accountNumber);

  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= transactionLimit && amount <= balance) {
      super.withdraw(amount);
    } else {
      print(
          "Invalid withdrawal amount, transaction limit, or insufficient balance.");
    }
  }
}

void main() {
  var checking = CheckingAccount(1000.0, "123456789", 500.0);
  print("Account Number: ${checking.accountNumber}");
  print("Initial Balance: \$${checking.balance.toStringAsFixed(2)}");

  double depositAmount = readDouble("Enter deposit amount: ");
  checking.deposit(depositAmount);

  double withdrawalAmount = readDouble("Enter withdrawal amount: ");
  checking.withdraw(withdrawalAmount);

  double exceedingWithdrawalAmount =
      readDouble("Enter withdrawal amount (Exceeding Limit): ");
  checking.withdraw(exceedingWithdrawalAmount);
}

double readDouble(String prompt) {
  while (true) {
    try {
      stdout.write(prompt);
      var input = stdin.readLineSync();
      if (input != null) {
        return double.parse(input);
      }
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }
}
