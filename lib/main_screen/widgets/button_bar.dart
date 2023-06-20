import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyButtonBar extends StatefulWidget {
  const MyButtonBar({super.key});

  @override
  State<MyButtonBar> createState() => _MyButtonBarState();
}

class _MyButtonBarState extends State<MyButtonBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(28),topRight: Radius.circular(28))
      ),
      child: Row(
        mainAxisAlignment: height>width ? MainAxisAlignment.spaceAround : MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: (){}, icon: const Icon(Icons.numbers)),
          IconButton(
              onPressed: (){}, icon: const Icon(Icons.numbers)),
          IconButton(
              onPressed: (){}, icon: const Icon(Icons.numbers)),
          IconButton(
              onPressed: (){}, icon: const Icon(Icons.numbers)),
        ],
      ),
    );
  }
}
