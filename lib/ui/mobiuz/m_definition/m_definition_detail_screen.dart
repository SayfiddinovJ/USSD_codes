import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/model/definition_model.dart';

class MDefinitionDetailScreen extends StatelessWidget {
  const MDefinitionDetailScreen({super.key, required this.definition});
  final DefinitionModel definition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobiuz'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: SingleChildScrollView(
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
                      definition.name,
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    definition.minute,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    definition.addtionToMinute,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    definition.internet,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    definition.addtionToInternet,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    definition.sms,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    definition.addtionToSMS,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    definition.addition,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                        definition.addtionToList.length,
                        (index) {
                          String a =
                              index == definition.addtionToList.length - 1
                                  ? ' '
                                  : ', ';
                          return Text(
                            definition.addtionToList[index] + a,
                            style: const TextStyle(color: Colors.grey),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    definition.payment,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    definition.addtionToPayment,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40.h,
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () async {
                definition.code.isEmpty
                    ? showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(definition.name),
                          content: const Text(
                              "Bu ta'rifga faqat MOBIUZ rasmiy ilovasidan o'tish mumkin"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'))
                          ],
                        ),
                      )
                    : await FlutterPhoneDirectCaller.callNumber(
                        definition.code);
              },
              child: const Text("Ta'rifga o'tish"),
            ),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
