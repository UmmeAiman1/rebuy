import 'package:flutter/material.dart';
import 'package:rebuy/theme/app_theme.dart';

class SideBarTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const SideBarTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell
      (onTap: onTap,
        child: ListTile(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none
          
          ),
          tileColor: lightTheme.colorScheme.onPrimary.withOpacity(0.3),
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
          
        ),
      ),
    );
  }
}
