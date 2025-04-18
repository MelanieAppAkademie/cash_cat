import 'package:cash_cat/src/domain/user/user.dart';

abstract class Card {
  final String cardNo;
  final DateTime? expirationDate;
  final AccountUser cardHolderName;

  Card(
    this.expirationDate, {
    required this.cardNo,
    required this.cardHolderName,
  });
}
