import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/values/colors.dart';
import '../home_screen.dart';

class NavbarWidget extends StatefulWidget {
  final List<Widget> screens;

  const NavbarWidget({Key? key, required this.screens}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}


class _NavbarWidgetState extends State<NavbarWidget> {
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 0.5, vertical: 0.5),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => widget.screens[_currentIndex]),
            );
          },
          selectedIconTheme: const IconThemeData(color: secondaryColor),
          selectedLabelStyle: TextStyle(color: secondaryColor),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 32, color: Colors.white),
              label: 'Beranda',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 32, color: Colors.white),
              label: 'Jadwal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 32, color: Colors.white),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
