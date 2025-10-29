import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';

class loginremembermeSection extends StatelessWidget {
  const loginremembermeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text(UTexts.rememberMe)
          ],
        ),

        //forget password
        TextButton(onPressed: () {}, child: Text(UTexts.forgetPassword)),
      ],
    );
  }
}
