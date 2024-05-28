import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva/auth/profile_screen.dart';
import 'package:reserva/main_screen/widgets/navbar.dart';
import 'package:reserva/main_screen/widgets/searchbar.dart';
import 'package:reserva/widgets/custom_card.dart';

import '../auth/auth_controller.dart';
import '../auth/login/login_screen.dart';
import '../core/theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.screens}) : super(key: key);

  final List<Widget> screens;
  @override
  _HomeScreenState createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height,
              ),
              child: Stack(
                children: <Widget>[
                  FractionallySizedBox(
                    widthFactor: 1.0,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/home_bg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 90),
                        Text(
                          'Selamat Datang!',
                          style: headingText.copyWith(color: Colors.white),
                        ),
                        Text(
                          'Yuk mulai Bookingmu!',
                          style: primaryText.copyWith(color: Colors.white),
                        ),
                        SearchBarWidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mungkin yang kamu cari',
                              style: titleTextStyle.copyWith(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateToScreen(context, LoginScreen());
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Lihat Semua',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        CardCustom(),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavbarWidget(
        screens: [
          HomeScreen(screens: []),
        ],
      ),
    );
  }
}
