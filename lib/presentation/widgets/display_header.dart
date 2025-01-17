import 'package:flutter/material.dart';

class DisplayHeader extends StatelessWidget {

  const DisplayHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.home, color: Colors.white, size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
