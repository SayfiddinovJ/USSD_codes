import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ussd/widgets/list_view.dart';

class USSDScreen extends StatefulWidget {
  const USSDScreen({super.key});

  @override
  State<USSDScreen> createState() => _USSDScreenState();
}

class _USSDScreenState extends State<USSDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){setState(() {
            Navigator.pop(context);
          });},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('USSD'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.share),),
          SizedBox(width: 10.w,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 10.h),
                physics: const BouncingScrollPhysics(),
                children: [
                  ...List.generate(10, (index) => MyListView()),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
