import 'package:flutter/material.dart';
import 'package:mobiuz/fourth/fourth_screen.dart';
import 'package:mobiuz/main/main_screen.dart';
import 'package:mobiuz/second/second_screen.dart';
import 'package:mobiuz/third/third_screen.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}


class _TabBoxState extends State<TabBox> {


List<Widget> screens = [];
int tapIndex = 0;
@override
  void initState() {
  screens.add(const MainScreen());
  screens.add(const SecondScreen());
  screens.add(const ThirdScreen());
  screens.add(const FourthScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tapIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF202D41).withOpacity(0.4),
        selectedItemColor: const Color(0xFF2563EB),
        currentIndex: tapIndex,
        onTap: (value){
          setState(() {
          tapIndex = value;
          });
        },
        items: [
          getBottomNavItem(icon: Icons.numbers, label: 'First'),
          getBottomNavItem(icon: Icons.numbers, label: 'Second'),
          getBottomNavItem(icon: Icons.numbers, label: 'Third'),
          getBottomNavItem(icon: Icons.numbers, label: 'Fourth'),
        ],
      ),
    );
  }
BottomNavigationBarItem getBottomNavItem({
  required IconData icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    activeIcon: Icon(icon),
    icon: Icon(icon),
    label: label,
  );
}
}
