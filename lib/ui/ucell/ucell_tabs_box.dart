import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobiuz/cubit/ucell/ucell_tab_cubit.dart';
import 'package:mobiuz/ui/ucell/u_definition/u_definition_screen.dart';
import 'package:mobiuz/ui/ucell/u_internet/u_internet_screen.dart';
import 'package:mobiuz/ui/ucell/u_min_sms/u_min_sms_screen.dart';
import 'package:mobiuz/ui/ucell/u_operator/u_operator_screen.dart';

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
      const UDefinitionScreen(),
      const UInternetScreen(),
      const UMinSMSScreen(),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: "Daq/SMS"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Operator"),
        ],
        currentIndex: context.watch<UcellTabCubit>().state,
        onTap: context.read<UcellTabCubit>().changeTabIndex,
      ),
    );
  }
}
