abstract class Account {
  String accountHolder;
  double balance;

  Account(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("$amount deposited. New balance: $balance");
  }

  void withdraw(double amount);

  void displayBalance() {
    print("$accountHolder's balance: $balance");
  }
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(String accountHolder, double balance, this.interestRate)
    : super(accountHolder, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("$amount withdrawn from Savings. New balance: $balance");
    } else {
      print("Insufficient balance in Savings Account.");
    }
  }

  void addInterest() {
    double interest = balance * interestRate;
    balance += interest;
    print("Interest added: $interest. New balance: $balance");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(String accountHolder, double balance, this.overdraftLimit)
    : super(accountHolder, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print("$amount withdrawn from Current. New balance: $balance");
    } else {
      print("Overdraft limit exceeded.");
    }
  }
}

void main() {
  List<Account> accounts = [
    SavingsAccount("Sohail", 5000, 0.05),
    CurrentAccount("Ali", 3000, 2000),
  ];

  for (var acc in accounts) {
    acc.displayBalance();
    acc.deposit(1000);
    acc.withdraw(2000);

    if (acc is SavingsAccount) {
      acc.addInterest();
    }

    print("");
  }
}
