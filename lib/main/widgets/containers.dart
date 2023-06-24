import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Containers extends StatefulWidget {
  Containers({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap
  });
  String name;
  IconData icon;
  VoidCallback onTap;
  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: widget.onTap,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Text(widget.name),
            Icon(widget.icon),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
