import 'package:flutter/material.dart';
 
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Store'),
      centerTitle: true,
    );
  }
 
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}