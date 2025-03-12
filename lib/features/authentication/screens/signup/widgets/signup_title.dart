import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupTitle extends StatelessWidget {
  const SignupTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signupTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
