import 'package:cash_cat/src/domain/bankaccount/transaction.dart';
import 'package:cash_cat/src/domain/user/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionView extends StatelessWidget {
  final Transaction transaction;
  final AccountUser accountUser;
  const TransactionView({
    super.key,
    required this.transaction,
    required this.accountUser,
  });

  @override
  Widget build(BuildContext context) {
    bool isPositiveAmount = transaction.amount > 0;
    final formattedAmount = NumberFormat.currency(
      locale: "de_DE",
      symbol: "€",
    ).format(transaction.amount);
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        spacing: 4,
        children: [
          Container(
            height: 50,
            width: 50,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Image.network(
              accountUser.avatarUrl ??
                  "https://www.kidway.shop/wp-content/uploads/yith-wcmv-uploads/vendor-avatar-placeholder.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ensures leading alignment
            children: [
              Text(
                accountUser.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                transaction.description,
                style: TextStyle(fontSize: 16, color: Color(0xFF8C8B8B)),
              ),
            ],
          ),
          Spacer(),
          Text(
            isPositiveAmount ? "+ $formattedAmount" : formattedAmount,

            style: TextStyle(
              color: isPositiveAmount ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
