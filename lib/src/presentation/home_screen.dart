import 'package:cash_cat/src/presentation/background.dart';
import 'package:cash_cat/src/presentation/card_view.dart';
import 'package:cash_cat/src/presentation/depot_view.dart';
import 'package:cash_cat/src/presentation/nav_bar_profile.dart';
import 'package:cash_cat/src/presentation/transaction_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAFFFE),

        actions: [
          NavBarProfile(),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
        title: Text("Hallo, Melanie!"),
      ),
      extendBodyBehindAppBar: false,
      body: Stack(
        children: [
          Background(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DepotView(),
                CardView(),
                Text(
                  "Letzte Transaktionen",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RecentTransactions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
        TransactionView(),
      ],
    );
  }
}
