import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva/auth/profile_screen.dart';
import 'package:reserva/core/theme/text_theme.dart';
import 'package:reserva/core/values/colors.dart';

import '../widgets/custom_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: <Widget>[
                  FractionallySizedBox(
                    widthFactor: 1.3,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/lapangan.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 200, horizontal: 20),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Metro Sport Center Imam Bonjol : Badminton',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                          width: 10), // Spasi antara ikon dan teks
                                      Text('Lokasi Saya',
                                          style:
                                              primaryText.copyWith(fontSize: 14)),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.price_change_rounded,
                                        size: 18,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                          width: 10), // Spasi antara ikon dan teks
                                      Text('Rp. 30.000/Jam',
                                          style:
                                              primaryText.copyWith(fontSize: 14)),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 18,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                          width: 10), // Spasi antara ikon dan teks
                                      Text('Jumlah Lapangan : 3',
                                          style:
                                              primaryText.copyWith(fontSize: 14)),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 10), // Spasi antara ikon dan teks
                                      Text('Parkir', style: textList),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text('Detail Informasi', style: textList),
                                  SizedBox(height: 10),
                                  Text(
                                      'Maksimal Booking 3 jam per court. Pemesanan untuk Member Bulanan, Event / Kegiatan Acara / Lomba harap menghubungi nomor 087800227888.',
                                      style: primaryText.copyWith(fontSize: 14)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.white,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jam Operasional',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text('Senin',
                                                  style: primaryText.copyWith(
                                                      fontSize: 16)),
                                              SizedBox(width: 10),
                                              Text('06:00 - 23:00',
                                                  style: primaryText.copyWith(
                                                      fontSize: 16)),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width: 10),
                                              Text('Senin',
                                                  style: primaryText.copyWith(
                                                      fontSize: 16)),
                                              SizedBox(width: 10),
                                              Text('06:00 - 23:00',
                                                  style: primaryText.copyWith(
                                                      fontSize: 16)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          CustomButton(
                            key: Key('custom_button'),
                            buttonText: 'BOOKING',
                            onPressed: () {},
                            buttonColor: primaryColor,
                          ),
                        ],
                      ))
                ],
              )
            ],
          ),
    ));
  }
}
