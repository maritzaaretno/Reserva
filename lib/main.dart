import 'package:flutter/material.dart';
import 'package:reserva/auth/profile_screen.dart';
import 'package:reserva/history/history_screen.dart';
import 'package:reserva/payment/detail_payment_screen.dart';
import 'package:reserva/payment/payment_method_screen.dart';
import 'package:reserva/payment/payment_screen.dart';
import 'package:reserva/payment/success_screen.dart';
import 'package:reserva/widgets/upload_payment.dart';
import 'Screens/splash_screen.dart';
import 'auth/login/login_screen.dart';
import 'detail_screen/detail_screen.dart';
import 'main_screen/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPaymentScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}