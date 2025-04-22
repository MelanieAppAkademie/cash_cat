import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: CarouselView(
            elevation: 4,
            itemExtent: 340,
            children: [
              Container(color: Colors.indigo, width: double.infinity),
              Container(color: Colors.indigo, width: double.infinity),
            ],
          ),
        ),
      ],
    );
  }
}
