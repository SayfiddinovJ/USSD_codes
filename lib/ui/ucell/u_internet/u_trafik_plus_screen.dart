import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_data/data/u_model/u_internet_model.dart';

class UTrafikPlusScreen extends StatelessWidget {
  const UTrafikPlusScreen({super.key, required this.collections});
  final List<UMBTrafikPlusModel> collections;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trafik+ internet to'plamlari",
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          ...List.generate(collections.length, (index) {
            UMBTrafikPlusModel collection = collections[index];
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
                  SizedBox(height: 10.h),
                  Wrap(
                    children: [
                      ...List.generate(
                        collection.options.length,
                        (index) {
                          String a = index == collection.options.length - 1
                              ? ' '
                              : ', ';
                          return Text(
                            collection.options[index] + a,
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "${collection.mb} MB",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '${collection.payment} so\'m',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text('Amal qilish muddati: ${collection.validityPeriod}'),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () async {
                        collection.code.isEmpty
                            ? showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(collection.mb),
                                  content: const Text(
                                      "Bu trafikni faqat Ucell rasmiy ilovasidan faollashtirish mumkin"),
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
                                collection.code);
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
