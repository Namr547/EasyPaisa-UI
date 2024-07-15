import 'package:easypaisa/Screens/Cash_Points.dart';
import 'package:easypaisa/Screens/home_screen.dart';
import 'package:easypaisa/Screens/my_account.dart';
import 'package:easypaisa/Screens/promotions.dart';
import 'package:easypaisa/Screens/scan.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return _pages[index];
    }));
  }

  final List<Widget> _pages = [HomeScreen(), const CashPoints(),ScanScreen(), Promotions(), const MyAccount()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped, // Pass the callback function with an index argument
      iconSize: 25,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey.shade600,
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on_outlined,
          ),
          label: 'Cash Points',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.qr_code_scanner_sharp,
            color: Colors.green,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notification_add_outlined,
          ),
          label: 'Promotions',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
          ),
          label: 'My Account',
        ),
      ],
    );
  }
}


