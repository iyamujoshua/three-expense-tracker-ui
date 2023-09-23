import 'package:flutter/material.dart';
import 'package:internship_ui/view/expenses.dart';
import 'package:internship_ui/view/homepage.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int selectedIndex = 0;

  final screen = [Homepag(), expenses(), expenses(), expenses(), expenses()];

  void _onitemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // print('${selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 22, 47, 92),
        currentIndex: selectedIndex,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: ((index) {
          setState(() {
            selectedIndex = index;
          });
          print(selectedIndex);
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
              color: selectedIndex == 0
                  ? Color.fromARGB(255, 34, 104, 233)
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              size: 24,
              color: selectedIndex == 1
                  ? Color.fromARGB(255, 34, 104, 233)
                  : Colors.grey,
            ),
            label: 'expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 24,
              color: selectedIndex == 2
                  ? Color.fromARGB(255, 34, 104, 233)
                  : Colors.grey,
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 24,
              color: selectedIndex == 3 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 24,
              color: selectedIndex == 3 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'chat',
          ),
        ],
      ),
    );
  }
}
