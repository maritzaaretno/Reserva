import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/values/colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textButton;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor,
    this.textButton
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: buttonColor ?? secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Text(
            buttonText,
            style: TextStyle(
                fontSize: 16,
                color: textButton ?? Colors.white),
          ),
        ],
      ),
    );
  }
}
