import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/main/widgets/containers.dart';

import '../ussd/ussd_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const Drawer(backgroundColor: Colors.red,),
      appBar: AppBar(
        title: const Text('mobiuz'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share),),
          SizedBox(width: 10.w,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: GridView.count(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  children: [
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){
                      setState(() {
                        _navigate(context);
                      });
                    },),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
  _navigate(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return const USSDScreen();
    }));
  }
}
