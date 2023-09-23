import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/mobiuz/mobiuz_tabs_box.dart';

class UOperatorScreen extends StatelessWidget {
  const UOperatorScreen({super.key});

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
            title: const Text('(+998) 93 180 00 00'),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('+998931800000');
              },
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
        ),
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
            title: const Text('(+998) 93 181 00 00'),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('+998931810000');
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
            title: const Text('8123'),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('8123');
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
