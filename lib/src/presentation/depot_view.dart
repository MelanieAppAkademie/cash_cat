import 'package:flutter/material.dart';

class DepotView extends StatelessWidget {
  const DepotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gesamtdepot",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,

            color: Color.fromARGB(255, 113, 113, 113),
          ),
        ),
        Text(
          "1.478,49 €",
          style: TextStyle(fontFamily: "Fjalla One", fontSize: 40),
        ),
      ],
    );
  }
}
