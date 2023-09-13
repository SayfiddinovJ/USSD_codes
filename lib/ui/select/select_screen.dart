import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/select/widgets/select_button.dart';
import 'package:mobiuz/ui/utils/app_images.dart';

import '../mobiuz/mobiuz_tabs_box.dart';
import '../ucell/ucell_tabs_box.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const Spacer(),
            SelectButton(
              image: AppImages.mobiuzLogo,
              text: 'Mobiuz',
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MobiuzTabsBox(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.h),
            SelectButton(
              image: AppImages.ucellLogo,
              text: 'Ucell',
              color: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UcellTabsBox(),
                  ),
                );
              },
            ),
            const Spacer(),
            const Text('SJJB production',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
