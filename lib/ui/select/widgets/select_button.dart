import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({
    super.key,
    required this.image,
    required this.text,
    required this.subTitle,
    required this.color,
    required this.onTap,
  });

  final String image;
  final String text;
  final String subTitle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15.w, top: 5.h, bottom: 5.h),
        height: 100.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 5.w),
            Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: 15.w),
            Text(
              subTitle,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
