import 'package:cash_cat/src/domain/bankaccount/transaction.dart';
import 'package:cash_cat/src/domain/user/user.dart';
import 'package:cash_cat/src/presentation/background.dart';
import 'package:cash_cat/src/presentation/card_over_view.dart';
import 'package:cash_cat/src/presentation/depot_view.dart';
import 'package:cash_cat/src/presentation/nav_bar_profile.dart';
import 'package:cash_cat/src/presentation/recent_transactions.dart';
import 'package:cash_cat/src/presentation/transaction_view.dart';
import 'package:flutter/material.dart';

Transaction transaction = Transaction(
  id: "123",
  accountId: "2",
  amount: -16.00,
  date: DateTime.now(),
  description: "Lunch Moneten 🍔",
);

AccountUser account1 = AccountUser(
  id: "2",
  name: "Simon Vogel",
  username: "simonElias",
  avatarUrl:
      "https://images.unsplash.com/photo-1508341591423-4347099e1f19?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  email: "sv@appakademie",
  accounts: [],
);

AccountUser account2 = AccountUser(
  id: "1",
  name: "Melanie",
  username: "Melli",
  avatarUrl:
      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?q=80&w=1727&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  email: "Melli@app.com",
  accounts: [],
);

List<Transaction> transactions = [
  Transaction(
    id: "123",
    accountId: "2",
    amount: 32.00,
    date: DateTime.now(),
    description: "Lunch Moneten 🍔",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: -16.00,
    date: DateTime.now(),
    description: "Lunch Moneten 🍔",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: 100.00,
    date: DateTime.now(),
    description: "Rechnung von März 2025",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: 4.00,
    date: DateTime.now(),
    description: "Taschengeld",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: 32.00,
    date: DateTime.now(),
    description: "Lunch Moneten 🍔",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: -16.00,
    date: DateTime.now(),
    description: "Lunch Moneten 🍔",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: 100.00,
    date: DateTime.now(),
    description: "Rechnung von März 2025",
  ),
  Transaction(
    id: "123",
    accountId: "2",
    amount: 4.00,
    date: DateTime.now(),
    description: "Taschengeld",
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAFFFE),

        actions: [
          NavBarProfile(url: account2.avatarUrl),
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
                CardOverView(),
                Text(
                  "Letzte Transaktionen",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransactionsOverView(),
                      ),
                    );
                  },
                  child: RecentTransactions(
                    accountUser: account1,
                    transaction: transactions.first,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionsOverView extends StatelessWidget {
  const TransactionsOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Letzte Transaktionen")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: EdgeInsets.all(2),
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return TransactionView(
              transaction: transactions[index],
              accountUser: account1,
            );
          },
        ),
      ),
    );
  }
}
