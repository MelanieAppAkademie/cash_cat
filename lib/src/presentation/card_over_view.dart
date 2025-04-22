import 'package:cash_cat/src/domain/bankaccount/card.dart';
import 'package:cash_cat/src/presentation/card_view.dart';
import 'package:flutter/material.dart';

class CardOverView extends StatelessWidget {
  const CardOverView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BankCard> cards = [
      Girocard("Melanie Geyer", "12345", 200),
      CreditCard("Melanie Geyer", "123456789", 20000, "11/2025", "455"),
    ];
    final double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Karten",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height / 4),
          child: ListView.builder(
            itemCount: cards.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CardView(card: cards[index]),
          ),
        ),
      ],
    );
  }
}
