import 'package:cash_cat/src/domain/user/user.dart';
import 'package:cash_cat/src/presentation/profile_page.dart';
import 'package:flutter/material.dart';

AccountUser user = AccountUser(
  id: "1",
  name: "Melanie Geyer",
  username: "mayllishka",
  avatarUrl: null,
  email: "melanie",
  accounts: [],
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    String name = user.name;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAFFFE),

        actions: [
          NavBarProfile(),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
        title: Text("Hallo, $name!"),
      ),
      extendBodyBehindAppBar: false,
      body: Stack(
        children: [
          Background(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [DepotView(), CardView(height: height)],
            ),
          ),
        ],
      ),
    );
  }
}

class DepotView extends StatelessWidget {
  const DepotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gesamtdepot",
          style: TextStyle(fontFamily: "Roboto", fontSize: 20),
        ),
        Text(
          "1.478,49 €",
          style: TextStyle(fontFamily: "Fjalla One", fontSize: 40),
        ),
      ],
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Karten", style: TextStyle(fontFamily: "Roboto", fontSize: 20)),
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

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFEAFFFE), Color.fromARGB(255, 183, 211, 255)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

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
