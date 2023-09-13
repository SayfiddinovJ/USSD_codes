import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobiuz/cubit/mobiuz/mobiuz_tab_cubit.dart';
import 'package:ussd_data/data/mobiuz/m_definitions_data.dart';
import 'package:mobiuz/ui/mobiuz/m_definition/m_definition_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_internet/m_internet_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_min_sms/m_min_sms_screen.dart';
import 'package:mobiuz/ui/mobiuz/m_operator/m_operators_screen.dart';

class MobiuzTabsBox extends StatefulWidget {
  const MobiuzTabsBox({super.key});

  @override
  State<MobiuzTabsBox> createState() => _MobiuzTabsBoxState();
}

class _MobiuzTabsBoxState extends State<MobiuzTabsBox> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      MDefinitionScreen(definitions: MobiUzDefinition.getDefinition()),
      const MInternetScreen(),
      const MMinSMSScreen(),
      const MOperatorScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<MobiuzTabCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
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
        currentIndex: context.watch<MobiuzTabCubit>().state,
        onTap: context.read<MobiuzTabCubit>().changeTabIndex,
      ),
    );
  }
}
