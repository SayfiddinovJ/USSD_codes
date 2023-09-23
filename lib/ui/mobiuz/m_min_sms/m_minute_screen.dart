import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/m_model/min_sms_model.dart';

class MMinuteScreen extends StatelessWidget {
  const MMinuteScreen({super.key, required this.minutes});
  final List<MMinModel> minutes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daqiqa to\'plamlari'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child: Column(children: [
          ...List.generate(minutes.length, (index) {
            MMinModel minute = minutes[index];
            return Container(
              padding: EdgeInsets.all(15.h),
              margin: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    minute.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    minute.cost,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text('Amal qilish muddati 30 kun'),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(minute.code);
                      },
                      child: const Text("Faollashtirish"),
                    ),
                  ),
                ],
              ),
            );
          })
        ]),
      ),
    );
  }
}
