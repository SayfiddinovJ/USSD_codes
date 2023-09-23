import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/m_model/internet_model.dart';

class NightMBScreen extends StatelessWidget {
  const NightMBScreen({super.key, required this.nights});
  final List<MNightCollectionModel> nights;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          ...List.generate(nights.length, (index) {
            MNightCollectionModel night = nights[index];
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
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      'Tungi to\'plam ${night.mb}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '${night.mb} MB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '${night.cost} so\'m',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text('Amal qilish muddati 30 kun'),
                  SizedBox(height: 5.h),
                  const Text('Foydalanish davri 00:00dan 8:00gacha'),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(night.code);
                      },
                      child: const Text("Faollashtirish"),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
