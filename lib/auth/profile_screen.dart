import 'package:flutter/material.dart';
import 'package:reserva/auth/widgets/custom_text_field.dart';
import 'package:reserva/core/values/colors.dart';
import '../core/theme/text_theme.dart';
import '../main_screen/widgets/navbar.dart';
import '../widgets/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 80,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                CustomTextField(
                  key: Key('username'),
                  labelText: 'Username',
                ),
                SizedBox(height: 20),
                CustomTextField(
                  key: Key('email'),
                  labelText: 'Email',
                ),
                SizedBox(height: 20),
                CustomTextField(
                  key: Key('password'),
                  labelText: 'Password',
                ),
                SizedBox(height: 60),
                CustomButton(
                  key: Key('custom_button'),
                  buttonText: 'SIMPAN',
                  onPressed: () {},
                ),
                SizedBox(height: 20),
              ],
            ),)
          ],
        ),
      ),
      bottomNavigationBar: NavbarWidget(
        screens: [
          ProfileScreen(),
        ],
      ),
    );
  }
}
