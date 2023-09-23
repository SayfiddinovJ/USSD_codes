import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/mobiuz/mobiuz_tabs_box.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_daily_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_monthly_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_nightly_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_trafik_plus_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_weekly_screen.dart';
import 'package:mobiuz/ui/widgets/global_button.dart';
import 'package:ussd_data/data/ucell/u_internet_data.dart';

class UInternetScreen extends StatelessWidget {
  const UInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ucell"),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MobiuzTabsBox()),
              );
            },
            icon: const Icon(Icons.wifi_protected_setup_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            GlobalButton(
              text: 'Oylik internet to\'plamlar',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UMonthlyMBScreen(
                        collections: UInternetData.getMonthlyCollections()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Haftalik internet to\'plamlar',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        UWeeklyScreen(collections: UInternetData.getWeek()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Kunlik internet to\'plamlar',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UDailyScreen(
                        collections: UInternetData.getDailyCollections()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Tungi internet to\'plamlar',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        UNighlyScreen(collections: UInternetData.getNight()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Trafik+ internet to\'plamlari',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UTrafikPlusScreen(
                        collections: UInternetData.getTrafikPlus()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
