class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient Balance");
    }
  }

  void showBalance() {
    print("Current Balance: $balance");
  }
}

void main() {
  BankAccount account = BankAccount("Sohail", 5000);

  account.showBalance();
  account.deposit(1000);
  account.withdraw(2000);
  account.showBalance();
}
