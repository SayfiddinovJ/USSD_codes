import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/data/model/internet_model.dart';

class DriveScreen extends StatelessWidget {
  const DriveScreen({super.key, required this.drives});
  final List<MDriveModel> drives;
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
          ...List.generate(drives.length, (index) {
            MDriveModel drive = drives[index];
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
                      drive.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    drive.mb,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '${drive.cost} so\'m',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(
                            drive.checkCode);
                      },
                      child:  Text(
                        "Tekshirish",
                        style: TextStyle(color: Colors.black,fontSize: 15.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(drive.code);
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
