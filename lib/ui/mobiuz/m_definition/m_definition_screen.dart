import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobiuz/ui/ucell/ucell_tabs_box.dart';
import 'package:ussd_data/data/m_model/definition_model.dart';
import 'package:mobiuz/ui/mobiuz/m_definition/m_definition_detail_screen.dart';

class MDefinitionScreen extends StatelessWidget {
  const MDefinitionScreen({super.key, required this.definitions});
  final List<DefinitionModel> definitions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiuz"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const UcellTabsBox()),
              );
            },
            icon: const Icon(Icons.wifi_protected_setup_sharp),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        children: [
          ...List.generate(definitions.length, (index) {
            DefinitionModel definition = definitions[index];
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
                  Text(
                    definition.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MDefinitionDetailScreen(definition: definition),
                          ),
                        );
                      },
                      child: const Text("Ta'rifga o'tish"),
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
