import 'package:fintech_app/screens/auth_screen/loginScreen.dart';
import 'package:fintech_app/screens/auth_screen/otpScreen.dart';
import 'package:fintech_app/screens/auth_screen/signupScreen.dart';
import 'package:fintech_app/screens/auth_screen/userDetailsScreen.dart';
import 'package:fintech_app/screens/homePage/homeScreen.dart';
import 'package:fintech_app/screens/homePage/transactionHistory.dart';
import 'package:flutter/material.dart';

class BottomNavigationB extends StatefulWidget {
  const BottomNavigationB({super.key});

  @override
  State<BottomNavigationB> createState() => _BottomNavigationBState();
}

class _BottomNavigationBState extends State<BottomNavigationB> {
  int _selectedBar = 0;
  final screens = [
    const HomeScreen(),
    const TransactionHistory(),
    const UserDetailsScreen(),
    const LoginScreen(),
    const SignupScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedBar],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          labelTextStyle:
              MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold)),
          indicatorColor: Color.fromARGB(255, 119, 147, 161),
        ),
        child: NavigationBar(
          backgroundColor: Colors.grey.shade200,
          height: 60,
          selectedIndex: _selectedBar,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(seconds: 2),
          onDestinationSelected: (_selectedBar) {
            setState(() {
              this._selectedBar = _selectedBar;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.car_rental),
              selectedIcon: Icon(Icons.car_rental_rounded),
              label: 'Rides',
            ),
            NavigationDestination(
              icon: Icon(Icons.lock),
              selectedIcon: Icon(Icons.key),
              label: 'Escrow',
            ),
            NavigationDestination(
              icon: Icon(Icons.credit_card),
              selectedIcon: Icon(Icons.credit_card_rounded),
              label: 'Card',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              selectedIcon: Icon(Icons.people_alt_rounded),
              label: 'Profile',
            ),
          ],
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     label: 'Home',
          //     backgroundColor: Colors.blue,
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.account_balance_wallet_outlined),
          //     label: 'Wallet',
          //     backgroundColor: Colors.blue,
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.people),
          //     label: 'Profile',
          //     backgroundColor: Colors.blue,
          //   ),
          // ],
        ),
      ),
    );
  }
}
