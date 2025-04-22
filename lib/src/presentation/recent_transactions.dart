import 'package:cash_cat/src/presentation/home_screen.dart';
import 'package:cash_cat/src/presentation/transaction_view.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 95,
          width: 350,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
            color: Color.fromARGB(255, 210, 210, 210),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          height: 85,
          width: 360,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 236, 236),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        TransactionView(transaction: transaction, accountUser: account1),
      ],
    );
  }
}
