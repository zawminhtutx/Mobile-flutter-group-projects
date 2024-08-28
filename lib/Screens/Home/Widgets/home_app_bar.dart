import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/icon.png',
            height: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}
