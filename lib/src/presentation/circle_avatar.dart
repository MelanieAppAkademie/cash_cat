import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String? url;
  const CustomCircleAvatar({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child:
          url != null
              ? Image.network(
                url!,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) => CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
              )
              : CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
    );
  }
}
