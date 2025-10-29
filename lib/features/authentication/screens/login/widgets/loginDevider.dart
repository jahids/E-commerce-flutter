import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';

class loginDevider extends StatelessWidget {
  const loginDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          indent: 30,
          endIndent: 10,
        )),
        Text(UTexts.orSignInWith),
        Expanded(
            child: Divider(
          indent: 10,
          endIndent: 30,
        )),
      ],
    );
  }
}
