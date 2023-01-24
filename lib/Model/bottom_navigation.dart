import 'package:e_commerce2/Model/home.dart';
import 'package:flutter/material.dart';

import '../Screens/Login/Screens/Login/login_screen.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -3),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10)
          ],
          color: Colors.white,
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon:
                  const bottomBarIcon(icon: (Icons.home_filled), active: true),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Home();
                })));
              },
            ),
            const bottomBarIcon(
              icon: (Icons.search),
              active: false,
            ),
            const bottomBarIcon(icon: (Icons.shopping_basket), active: false),
            IconButton(
              icon: const bottomBarIcon(icon: (Icons.person), active: false),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const LoginScreen();
                })));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class bottomBarIcon extends StatelessWidget {
  const bottomBarIcon({
    Key? key,
    required this.icon,
    required this.active,
  }) : super(key: key);

  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 20,
      color: active ? Colors.purple[800] : Colors.black,
    );
  }
}
