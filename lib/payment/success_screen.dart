import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:reserva/core/values/colors.dart';

import '../widgets/custom_button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 150),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),
                Icon(Icons.check_circle, size: 150, color: primaryColor),
                const SizedBox(height: 50),
                Text(
                  "Bukti Pembayaran Diterima",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  "Terima Kasih telah melakukan pembayaran. Mohon Tunggu persetujuan dari admin untuk Menyelesaikan Pemesanan.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 100),
                CustomButton(
                  key: Key('custom_button'),
                  buttonText: 'KEMBALI',
                  onPressed: () {},
                  buttonColor: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
