import 'package:cash_cat/src/presentation/circle_avatar.dart';
import 'package:cash_cat/src/presentation/profile_page.dart';
import 'package:flutter/material.dart';

class NavBarProfile extends StatelessWidget {
  final String? url;
  const NavBarProfile({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          ),
      child: Container(
        height: 40,
        width: 40,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: CustomCircleAvatar(url: url),
      ),
    );
  }
}
