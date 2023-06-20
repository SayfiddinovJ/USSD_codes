import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/main_screen/widgets/button_bar.dart';
import 'package:mobiuz/main_screen/widgets/containers.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
          SizedBox(height: 25.h,),
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  children: [
                    Containers(name: 'USSD', icon: Icons.numbers,onTap: (){},),
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
          const MyButtonBar(),
        ],
      ),
    );
  }
}
