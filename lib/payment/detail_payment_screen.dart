import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva/core/theme/text_theme.dart';
import 'package:reserva/core/values/colors.dart';
import 'package:reserva/widgets/custom_appbar.dart';

class DetailPaymentScreen extends StatefulWidget{
  @override
  _DetailPaymentScreenState createState() => _DetailPaymentScreenState();
}

class _DetailPaymentScreenState extends State <DetailPaymentScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Identitas Pemesan',
                style: titleTextStyle,
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.person_rounded,
                                size: 36,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama',style: labelTextStyle),
                              Text('Maritza Retno',style: textList.copyWith(color: Colors.grey)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 36,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email',style: labelTextStyle),
                              Text('maritza@gmail.com',style: textList.copyWith(color: Colors.grey)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ],
              ),
              SizedBox(height: 40),
              Text('Detail Pemesanan',
                style: titleTextStyle,
              ),
              SizedBox(height: 20),
              Text('Metro Sport Center Imam Bonjol : Badminton',
                style: labelTextStyle,
              ),
              SizedBox(height: 10),
              Text('Jl. Imam Bonjol No.47-49, Purwosari, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50172',
                style: labelTextStyle.copyWith(color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle,
                              size: 24,
                              color: primaryColor), // Icon di samping
                          SizedBox(width: 8), // Spasi antara icon dan teks
                          Text(
                            'Status',
                            style: titleTextStyle.copyWith(color: primaryColor),
                          ), // Teks
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(Icons.credit_card,
                              size: 24,
                              color: primaryColor), // Icon di samping
                          SizedBox(width: 8), // Spasi antara icon dan teks
                          Text(
                            'ID Pemesanan',
                            style: titleTextStyle.copyWith(color: primaryColor),
                          ),
                        ],
                      ),
                      Text(
                        'AIXVGH0981234',
                        style: labelTextStyle.copyWith(color: Colors.black87),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.house,
                              size: 24,
                              color: primaryColor), // Icon di samping
                          SizedBox(width: 8), // Spasi antara icon dan teks
                          Text(
                            'Sewa Tempat',
                            style: titleTextStyle.copyWith(color: primaryColor),
                          ),
                        ],
                      ),
                      Text(
                        'Lapangan 1',
                        style: labelTextStyle.copyWith(color: Colors.black87),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month,
                              size: 24,
                              color: primaryColor), // Icon di samping
                          SizedBox(width: 8), // Spasi antara icon dan teks
                          Text(
                            'Tanggal',
                            style: titleTextStyle.copyWith(color: primaryColor),
                          ), // Teks
                        ],
                      ),
                      Text(
                        '28 Maret 2024',
                        style: labelTextStyle.copyWith(color: Colors.black87),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.watch_later_outlined,
                              size: 24,
                              color: primaryColor), // Icon di samping
                          SizedBox(width: 8), // Spasi antara icon dan teks
                          Text(
                            'Durasi',
                            style: titleTextStyle.copyWith(color: primaryColor),
                          ),
                        ],
                      ),
                      Text(
                        '2 jam, 11.00-13.00',
                        style: labelTextStyle.copyWith(color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Detail Biaya',
                        style: titleTextStyle,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Biaya Pemesanan',
                            style: labelTextStyle.copyWith(color: Colors.grey),
                          ),
                          Text('Rp 60.000',
                            style: labelTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Biaya Admin',
                            style: labelTextStyle.copyWith(color: Colors.grey),
                          ),
                          Text('Rp 2.000',
                            style: labelTextStyle,
                          ),
                        ],
                      ),
                      Divider(
                        color: primaryColor, // warna garis pemisah
                        thickness: 2, // ketebalan garis pemisah
                        height: 20, // tinggi garis pemisah
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                            style: labelTextStyle.copyWith(color: Colors.grey),
                          ),
                          Text('Rp 62.000',
                            style: labelTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Detail Pembayaran',
                style: titleTextStyle,
              ),
            ],
          ),
        )
      ),
    );
  }

}