import 'package:biggworks_task/utils/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String currentTime;
  final VoidCallback onHomePressed;

  const Header({
    super.key,
    required this.currentTime,
    required this.onHomePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
          onPressed: onHomePressed,
        ),
        Center(
          child: Text(currentTime, style: q20W),
        ),
      ],
    );
  }
}
