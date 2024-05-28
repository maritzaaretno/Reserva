import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Iconsax.arrow_left_2,
        color: Colors.white,
      ),
      title: const Text(
        'Proses Pembayaran',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xFF192655),
    );
  }
}
