import 'package:flutter/material.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
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
              "https://images.unsplash.com/photo-1508341591423-4347099e1f19?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ensures leading alignment
            children: [
              Text(
                "Simon Vogel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Lunch Moneten",
                style: TextStyle(fontSize: 16, color: Color(0xFF8C8B8B)),
              ),
            ],
          ),
          Spacer(),
          Text("+16.00 €"),
        ],
      ),
    );
  }
}
