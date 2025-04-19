import 'package:cash_cat/src/domain/bankaccount/bank.dart';
import 'package:cash_cat/src/domain/bankaccount/card.dart';
import 'package:cash_cat/src/domain/bankaccount/transaction.dart';
import 'package:cash_cat/src/domain/user/user.dart';

class Account {
  // Eigenschaften einer Klasse
  final String accountNo;
  double? accountBalance = 0.0;
  final String accountType;
  final AccountUser owner;
  double? dispo = 0.0;
  List<Transaction>? transactions = [];
  Card? card;
  final Bank bank;

  // Konstruktor (Bauplan)
  Account({
    required this.accountNo,
    this.accountBalance,
    required this.accountType,
    required this.owner,
    this.dispo,
    this.transactions,
    this.card,
    required this.bank,
  });
}
