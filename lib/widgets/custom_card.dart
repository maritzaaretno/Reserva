import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4, // elevation for shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // padding around the content
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/lapangan.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Metro Sport Center Imam Bonjol : Badminton',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Rp 30.000/Jam',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
