import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconsax/iconsax.dart';
import 'package:reserva/core/theme/text_theme.dart';
import 'package:reserva/core/values/colors.dart';
import 'package:reserva/widgets/payment_card.dart';
import 'package:reserva/widgets/upload_payment.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PaymentCard(),
                SizedBox(height: 20),
                UploadPayment(),
                SizedBox(height: 20),
                CustomButton(
                  key: Key('upload'),
                  buttonText: 'UPLOAD',
                  onPressed: () {},
                  buttonColor: primaryColor,
                ),
                SizedBox(height: 20),
                CustomButton(
                  key: Key('back'),
                  buttonText: 'KEMBALI',
                  onPressed: () {},
                  buttonColor: tertiaryColor,
                  textButton: primaryColor,
                ),
              ],
            ),
          )
      ),
    );
  }
}
