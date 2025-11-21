import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const Mybutton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext conext) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 200,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.brown[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}
