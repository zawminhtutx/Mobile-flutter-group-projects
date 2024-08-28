import 'package:flutter/material.dart';
import '../../../constants.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(),
        color: kcontentColor,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Serarch...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
