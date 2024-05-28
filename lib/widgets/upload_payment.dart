import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva/core/values/colors.dart';

class UploadPayment extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      dashPattern: const [10, 5],
      strokeCap: StrokeCap.round,
      color: secondaryColor,
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.camera_alt,
              color: secondaryColor,
              size: 80,
            ),
            const SizedBox(height: 15),
            Text(
              'Upload Bukti Pembayaran',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
            ),
          ],
        ),
      ),
    );
  }
}