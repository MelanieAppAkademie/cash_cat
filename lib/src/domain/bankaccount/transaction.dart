class Transaction {
  final String id;
  final String accountId;
  final double amount;
  final DateTime date;
  final String description;

  Transaction({
    required this.id,
    required this.accountId,
    required this.amount,
    required this.date,
    required this.description,
  });
}
