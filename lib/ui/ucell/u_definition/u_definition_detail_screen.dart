import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/u_model/u_definition_model.dart';

class UDefinitionDetailScreen extends StatelessWidget {
  const UDefinitionDetailScreen({super.key, required this.definition});
final UDefinitionModel definition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ucell'),
        backgroundColor: Colors.deepPurple,
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
                          color: Colors.deepPurple,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      definition.name,
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Visibility(
                    visible: definition.minute.isNotEmpty,
                    child: Text(
                      definition.minute,
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: definition.minute.isNotEmpty,
                    child: const Text(
                      'daqiqalar O\'zbekiston bo\'yicha',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Visibility(
                    visible: definition.mb.isNotEmpty,
                    child: Text(
                      '${definition.mb} GB',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: definition.mb.isNotEmpty,
                    child: const Text(
                      'mobil internet trafik oyiga',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Visibility(
                    visible: definition.sms.isNotEmpty,
                    child: Text(
                      '${definition.sms} SMS',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: definition.sms.isNotEmpty,
                    child: const Text(
                      'oyiga',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    definition.additionMb,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                        definition.additionMBFor.length,
                            (index) {
                          String a =
                          index == definition.additionMBFor.length - 1
                              ? ' '
                              : ', ';
                          return Text(
                            definition.additionMBFor[index] + a,
                            style: const TextStyle(color: Colors.grey),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                    Text(
                    definition.addition,
                    style: const TextStyle(color: Colors.grey),
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
                   'Abonent to\'lovi oyiga',
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
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              onPressed: () async {
                definition.code.isEmpty
                    ? showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(definition.name),
                    content: const Text(
                        "Bu ta'rifga faqat Ucell rasmiy ilovasidan o'tish mumkin"),
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
