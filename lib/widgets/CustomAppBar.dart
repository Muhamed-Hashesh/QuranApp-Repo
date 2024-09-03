import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          IconsaxPlusLinear.menu_1,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Text(
        'القرآن الكريم',
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            IconsaxPlusLinear.search_normal_1,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
