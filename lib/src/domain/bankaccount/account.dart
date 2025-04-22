import 'package:cash_cat/src/domain/bankaccount/bank.dart';
import 'package:cash_cat/src/domain/bankaccount/card.dart';
import 'package:cash_cat/src/domain/bankaccount/transaction.dart';

class Account {
  // Eigenschaften einer Klasse
  final String accountNo;
  double? accountBalance = 0.0;
  final String accountType;
  double? dispo = 0.0;
  List<Transaction> transactions;
  Card? card;
  final Bank bank;

  // Konstruktor (Bauplan)
  Account({
    required this.accountNo,
    this.accountBalance,
    required this.accountType,
    this.dispo,
    required this.transactions,
    this.card,
    required this.bank,
  });

  double calculateBalance() {
    double totalAmount = 0;
    for (var transaction in transactions) {
      totalAmount += transaction.amount;
    }
    return totalAmount;
  }
}
