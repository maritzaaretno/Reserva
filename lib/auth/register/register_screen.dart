import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reserva/auth/login/login_screen.dart';
import 'package:reserva/core/theme/text_theme.dart';
import 'package:reserva/core/values/colors.dart';
import 'package:reserva/widgets/custom_button.dart';
import '../auth_controller.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/auth_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Text(
                  'Registrasi',
                  style: headingText.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Daftar dan mulai reservasimu!',
                  style: primaryText.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 150),
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
                SizedBox(height: 20),
                CustomTextField(
                  key: Key('confirm_pass'),
                  labelText: 'Confirm Password',
                ),
                SizedBox(height: 60),
                CustomButton(
                  key: Key('custom_button'),
                  buttonText: 'DAFTAR',
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sudah memiliki akun? ',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: 'Masuk',
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              navigateToScreen(context, LoginScreen());
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
        ),
      ),
    );
  }
}
