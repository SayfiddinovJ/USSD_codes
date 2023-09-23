import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobiuz/cubit/ucell/ucell_tab_cubit.dart';
import 'package:mobiuz/ui/ucell/u_definition/u_definition_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_internet_screen.dart';
import 'package:mobiuz/ui/ucell/u_sms/u_sms_screen.dart';
import 'package:mobiuz/ui/ucell/u_operator/u_operator_screen.dart';
import 'package:ussd_data/data/ucell/u_definition_data.dart';
import 'package:ussd_data/data/ucell/u_sms_data.dart';

class UcellTabsBox extends StatefulWidget {
  const UcellTabsBox({super.key});

  @override
  State<UcellTabsBox> createState() => _UcellTabsBoxState();
}

class _UcellTabsBoxState extends State<UcellTabsBox> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      UDefinitionScreen(definitions: UDefinitionData.getDefinitions()),
      const UInternetScreen(),
       USMSScreen(sms: USMSData.getSMS(),),
      const UOperatorScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<UcellTabCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.call_to_action_outlined), label: "Ta'riflar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.language), label: "Internet"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "SMS"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Operator"),
        ],
        currentIndex: context.watch<UcellTabCubit>().state,
        onTap: context.read<UcellTabCubit>().changeTabIndex,
      ),
    );
  }
}
