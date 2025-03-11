import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GeneralDivider extends StatelessWidget {
  const GeneralDivider(
      {super.key, required this.dark, required this.dividerText});

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            endIndent: 60,
            indent: 5,
          ),
        ),
        Text(
          dividerText.toUpperCase(),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
