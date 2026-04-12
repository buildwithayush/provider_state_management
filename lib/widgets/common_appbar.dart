import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
   const CommonAppBar({
    super.key,
    required this.title,
    this.centreTitle = false,
    this.color,
  });

  final String title;
  final Color? color;
  final bool centreTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centreTitle,
      title: Text(title),
      backgroundColor:color,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

