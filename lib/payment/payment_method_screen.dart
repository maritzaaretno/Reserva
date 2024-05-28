import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva/core/theme/text_theme.dart';
import 'package:reserva/core/values/colors.dart';
import 'package:reserva/widgets/custom_appbar.dart';

class PaymentMethodScreen extends StatefulWidget{
  const PaymentMethodScreen({super.key});

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen>{

  int _selectedTransaction = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Pembayaran',
                  style: titleTextStyle.copyWith(color: Colors.grey),
                  ),
                  SizedBox(width: 120),
                  Text('Rp 60.000',
                  style: titleTextStyle,),
                ],
              ),
              SizedBox(height: 20),
              Text('Transfer Bank', style: titleTextStyle),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioListTile<int>(
                        title: Text('BCA'),
                        value: 1,
                        groupValue: _selectedTransaction,
                        onChanged: (value) {
                          setState(() {
                            _selectedTransaction = value!;
                          });
                        },
                        activeColor: primaryColor,
                        controlAffinity: ListTileControlAffinity.trailing,
                        secondary: Image.asset('assets/images/bca.png'),
                      ),
                      RadioListTile<int>(
                        title: Text('Mandiri'),
                        value: 2,
                        groupValue: _selectedTransaction,
                        onChanged: (value) {
                          setState(() {
                            _selectedTransaction = value!;
                          });
                        },
                        activeColor: primaryColor,
                        controlAffinity: ListTileControlAffinity.trailing,
                        secondary: Image.asset('assets/images/mandiri.png'),
                      ),
                      RadioListTile<int>(
                        title: Text('BNI'),
                        value: 3,
                        groupValue: _selectedTransaction,
                        onChanged: (value) {
                          setState(() {
                            _selectedTransaction = value!;
                          });
                        },
                        activeColor: primaryColor,
                        controlAffinity: ListTileControlAffinity.trailing,
                        secondary: Image.asset('assets/images/bni.png'),
                      ),
                      RadioListTile<int>(
                        title: Text('Dana'),
                        value: 3,
                        groupValue: _selectedTransaction,
                        onChanged: (value) {
                          setState(() {
                            _selectedTransaction = value!;
                          });
                        },
                        activeColor: primaryColor,
                        controlAffinity: ListTileControlAffinity.trailing,
                        // Menambahkan gambar sebagai secondary
                        secondary: Image.asset('assets/images/dana.png'), // Ganti dengan path gambar yang sesuai
                      ),
                    ],
                  ),
                )

              )
            ],
          ),
        ),
      ),
    );
  }
}