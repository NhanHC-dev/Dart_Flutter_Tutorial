import 'dart:io';

class BankAccount {
  late int balance;
  late int accountNumber;
  BankAccount(this.balance, this.accountNumber);
  deposit() {
    print("Enter the value for depositing: ");
    int dmon = int.parse(stdin.readLineSync()!);
    this.balance += dmon;
    print("$dmon deposited into the account");
  }

  withdraw() {
    print("Enter the value for withdrawing: ");
    int dmon = int.parse(stdin.readLineSync()!);
    this.balance -= dmon;
    print("$dmon withdrew from the account");
  }
}

class CheckingAccount extends BankAccount {
  static const int transactionLimit = 1000;
  CheckingAccount(int balance, int accountNumber)
      : super(balance, accountNumber);
  @override
  withdraw() {
    print("Enter the value for withdrawing: ");
    int dmon = int.parse(stdin.readLineSync()!);
    if (dmon > transactionLimit) {
      print("the value is higher than transaction limit($transactionLimit)");
    } else {
      this.balance -= dmon;
      print("$dmon withdrew from the account");
    }
  }
}

void main() {
  CheckingAccount s1 = new CheckingAccount(150, 19879871);
  s1.deposit();
}
