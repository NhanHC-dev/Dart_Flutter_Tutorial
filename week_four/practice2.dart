class BankAccount{
  late double balance;
  late int accountNumber;
  BankAccount(this.accountNumber,this.balance);
  void deposit(double amount){
    if(amount > 0){
      balance += amount;
    }else{
      print("The amount must be greater than 0");
    }
  }
  void withdraw(double amount){
    if(amount > 0 && amount <= balance){
      balance -= amount;
    }else if(amount > balance){
      print("The amount must be more less than your balance");
    }else{
      print("The amount must be greater than 0");
    }
  }
}

//=========================================================================================================
class CheckingAccount extends BankAccount{
  late double transactionLimit;
  CheckingAccount(int accountNumber, double balance, this.transactionLimit) : super(accountNumber,balance);
  @override
  void withdraw(double amount){
    if(amount > 0 && amount <= transactionLimit && amount <= balance){
      balance -= amount;
    }else if(amount > transactionLimit){
      print("The amount must be more less than transactionLimit");
    }else if(amount > balance){
      print("The amount must be more less than your balance");
    }else{
      print("The amount must be greater than 0");
    }
  }
}
//=========================================================================================================
void main(List<String> args) {
  var ck = CheckingAccount(123,0,200);
  ck.deposit(20);
  print(ck.balance);
  ck.withdraw(10);
  print(ck.balance);
  //===================================
  var bk = BankAccount(456, 50);
  bk.deposit(50);
  print(bk.balance);
  bk.withdraw(20);
  print(bk.balance);
}