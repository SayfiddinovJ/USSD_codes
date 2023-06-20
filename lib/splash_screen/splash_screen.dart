import 'package:flutter/material.dart';
import 'package:mobiuz/main_screen/main_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    _navigate(context);
    return const Scaffold(
      body: Center(
        child: Text('mobiuz',style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w700,
          fontSize: 50,
        ),),
      ),
    );
  }
  _navigate(BuildContext context){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return MainScreen();
      }));
    });
  }
}
