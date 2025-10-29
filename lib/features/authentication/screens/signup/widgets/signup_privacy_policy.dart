import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class signup_privacy_policy extends StatelessWidget {
  const signup_privacy_policy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
            text: TextSpan(
          children: [
            TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                text: '${UTexts.iAgreeTo} '),
            TextSpan(
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    decoration: TextDecoration.underline,
                    color: UColors.primary),
                text: ' ${UTexts.privacyPolicy} '),
            TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                text: ' ${UTexts.and} '),
            TextSpan(
                text: UTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    decoration: TextDecoration.underline,
                    color: UColors.primary)),
          ],
        ))
      ],
    );
  }
}
