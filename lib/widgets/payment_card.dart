import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/theme/text_theme.dart';

class PaymentCard extends StatelessWidget{
  @override
  Widget build(BuildContext) {
    return Container(
      height: 190,
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF8B909F),
            Color(0xFFBDC2D2),
            Color(0xFF8B909F),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Virtual Account', style: paymentCardText),
          const Spacer(),
          Text(
            '4111 7679 8689 9700',
            style: paymentCardText.copyWith(fontSize: 20),
          ),
          SizedBox(height: 24),
          const Text('Lakukan Pembayaran Sebelum', style: paymentCardText),
          Text(
            '23:59:00',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}