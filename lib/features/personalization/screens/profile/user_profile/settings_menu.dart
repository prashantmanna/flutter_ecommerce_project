import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.trailing});

  final IconData icon;
  final String title,subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size:28,color: Scolors.primaryColor,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
