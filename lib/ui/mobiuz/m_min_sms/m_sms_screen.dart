import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/m_model/min_sms_model.dart';

class MSMSScreen extends StatelessWidget {
  const MSMSScreen({super.key, required this.sms});
  final List<MSMSModel> sms;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMS to\'plamlari'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child: Column(children: [
          ...List.generate(sms.length, (index) {
            MSMSModel sm = sms[index];
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
                      '${sm.name} to\'plami',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '${sm.count} sms',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    sm.cost,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  sm.validity == null ? const SizedBox() : Text(sm.validity!),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(sm.code);
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
