import 'package:cash_cat/src/presentation/profile_page.dart';
import 'package:flutter/material.dart';

class NavBarProfile extends StatelessWidget {
  const NavBarProfile({super.key});

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
        child: Image.network(
          fit: BoxFit.cover,
          "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?q=80&w=1727&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
      ),
    );
  }
}
