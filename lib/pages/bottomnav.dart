import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/home.dart';
import 'package:flutter_firebase/pages/order.dart';
import 'package:flutter_firebase/pages/profile.dart';
import 'package:flutter_firebase/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  @override
  void initState() {
    homepage = Home();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homepage, profile, order, wallet];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            )
          ]),
      body: pages[currentTabIndex],
    );
  }
}
