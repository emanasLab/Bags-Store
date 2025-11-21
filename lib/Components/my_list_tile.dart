import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String pageTitle;
  final IconData icon;
  final void Function()? onTap;
  const MyListTile({
    super.key,
    required this.pageTitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.brown[900]),
      title: Text(pageTitle, style: TextStyle(color: Colors.brown[900])),
      onTap: onTap,
    );
  }
}
