import 'package:flutter/material.dart';

class loginDevider extends StatelessWidget {
  const loginDevider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          indent: 30,
          endIndent: 10,
        )),
        Text(text),
        Expanded(
            child: Divider(
          indent: 10,
          endIndent: 30,
        )),
      ],
    );
  }
}
