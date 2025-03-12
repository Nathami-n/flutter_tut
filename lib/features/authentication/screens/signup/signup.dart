import 'package:e_commerce/common/widgets/login_signup/divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_title.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                const SignupTitle(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // form
                SignupForm(dark: dark),

                const SizedBox(height: TSizes.spaceBtwItems),
                GeneralDivider(dark: dark, dividerText: TTexts.orSignUpWith),

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const SocialButtons(),
              ],
            ),
          ),
        ));
  }
}
