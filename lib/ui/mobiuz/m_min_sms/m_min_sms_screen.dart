import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/widgets/global_button.dart';
import 'package:mobiuz/ui/mobiuz/m_min_sms/m_minute_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_min_sms/m_sms_screen.dart';

class MMinSMSScreen extends StatelessWidget {
  const MMinSMSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            GlobalButton(
                text: "Daqiqalar to'plamlari",
                color: Colors.red,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MMinuteScreen()));
                }),
            GlobalButton(
                text: "SMS to'plamlari",
                color: Colors.red,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MSMSScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
