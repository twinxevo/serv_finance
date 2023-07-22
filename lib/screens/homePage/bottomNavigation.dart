import 'package:fintech_app/screens/auth_screen/otpScreen.dart';
import 'package:fintech_app/screens/auth_screen/userDetailsScreen.dart';
import 'package:fintech_app/screens/homePage/transactionHistory.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _selectedBar = 0;
  final screens = [
    OtpScreen(),
    TransactionHistory(),
    UserDetailsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home_rounded, size: 30),
      Icon(Icons.credit_card_rounded, size: 30),
      Icon(Icons.lock_rounded, size: 30),
    ];
    return Scaffold(
      body: IndexedStack(
        index: _selectedBar,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          // items: items,

          // items: [
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
    );
  }
}
