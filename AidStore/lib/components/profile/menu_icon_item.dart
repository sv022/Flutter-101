import 'package:flutter/material.dart';


class MenuIconItem extends StatelessWidget {
  const MenuIconItem({ super.key, required this.icon, required this.text });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Image.asset(
            '../lib/assets/$icon',
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}