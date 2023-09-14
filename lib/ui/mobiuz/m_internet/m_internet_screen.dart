import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/drive_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/m_daily_mb_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/m_monthly_mb_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/m_night_mb_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/on_net_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/widgets/global_button.dart';
import 'package:ussd_data/data/mobiuz/m_internet_data.dart';

class MInternetScreen extends StatelessWidget {
  const MInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            GlobalButton(
              text: 'Oylik internet to\'plamlar',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MMonthlyMBScreen(
                        collections: MMonthMBData.getMBCollections()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: '«Tungi DRIVE»',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DriveScreen(drives: MDriveData.getDrives()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: '«OnNet»',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OnNetScreen(onNets: MOnNetData.getOnNets()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Tungi internet to\'plamlar',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NightMBScreen(
                        nights: MNightCollectionsData.getNightCollection()),
                  ),
                );
              },
            ),
            GlobalButton(
              text: 'Kunlik internet to\'plamlar',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MDailyMBScreen(
                        collections: MDailyMBCollection.getDailyCollection()),
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
