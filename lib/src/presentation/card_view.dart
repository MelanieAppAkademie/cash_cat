import 'package:cash_cat/src/domain/bankaccount/card.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final BankCard card;
  const CardView({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    bool isCreditCard = card is CreditCard;
    return Container(
      decoration: BoxDecoration(
        color: (isCreditCard) ? Color(0xFFB7C3FF) : Color(0xFFFFB7E9),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors:
                (isCreditCard)
                    ? [
                      Color(0xFF5EF8D9).withAlpha(100),
                      Colors.white.withAlpha(4),
                    ]
                    : [
                      Color(0xFFF88D5E).withAlpha(100),
                      Colors.white.withAlpha(4),
                    ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  (card is CreditCard) ? "Kreditkarte" : "Girocard",
                  style: TextStyle(fontFamily: "Roboto", fontSize: 18),
                ),
                if (isCreditCard)
                  Text(
                    (card as CreditCard).expirationDate,
                    style: TextStyle(fontFamily: "Roboto", fontSize: 18),
                  ),
              ],
            ),
            Spacer(),
            Text(
              card.cardNumber,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  card.cardHolder,
                  style: TextStyle(fontFamily: "Roboto", fontSize: 18),
                ),
                if (isCreditCard)
                  GestureDetector(
                    onLongPress: () {},
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.visibility_outlined, color: Colors.blueGrey),
                        Text("CVV", style: TextStyle(color: Colors.blueGrey)),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
