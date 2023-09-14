import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MOperatorScreen extends StatelessWidget {
  const MOperatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        SizedBox(height: 10.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
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
          child: ListTile(
            title: const Text('(+998) 97 130 09 09'),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('+998971300909');
              },
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
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
          child: ListTile(
            title: const Text('0890'),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('0890');
              },
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
