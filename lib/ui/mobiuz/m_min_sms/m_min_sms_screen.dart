import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/ucell/ucell_tabs_box.dart';
import 'package:mobiuz/ui/widgets/global_button.dart';
import 'package:mobiuz/ui/mobiuz/m_min_sms/m_minute_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_min_sms/m_sms_screen.dart';
import 'package:ussd_data/data/mobiuz/m_min_sms_data.dart';

class MMinSMSScreen extends StatelessWidget {
  const MMinSMSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
         actions: [
          IconButton(
            onPressed: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const UcellTabsBox()),
              );
            },
            icon: const Icon(Icons.wifi_protected_setup_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            GlobalButton(
                text: "Daqiqa to'plamlari",
                color: Colors.red,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MMinuteScreen(
                        minutes: MMinData.getMinute(),
                      ),
                    ),
                  );
                }),
            GlobalButton(
                text: "SMS to'plamlari",
                color: Colors.red,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MSMSScreen(
                        sms: MSMSData.getSMS(),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
