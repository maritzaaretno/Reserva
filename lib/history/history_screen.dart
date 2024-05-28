import 'package:flutter/material.dart';
import 'package:reserva/core/values/colors.dart';
import 'package:reserva/widgets/custom_appbar.dart';
import 'package:reserva/widgets/custom_card.dart';

import '../main_screen/widgets/navbar.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // 2 tab: Riwayat dan Proses
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Proses'),
              Tab(text: 'Riwayat'),
            ],
            indicatorColor: secondaryColor,
            labelColor: secondaryColor,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(  //Riwayat
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardCustom()
                      ],
                    ),
                  ),
                ),  //process
                Container(  //Riwayat
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardCustom()
                      ],
                    ),
                  ),
                ),  //riwayat

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavbarWidget(
        screens: [
          HistoryScreen()
        ],
      ),
    );
  }
}
