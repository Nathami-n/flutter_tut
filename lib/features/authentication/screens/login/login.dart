import "package:e_commerce/common/styles/spacing_styles.dart";
import "package:e_commerce/common/widgets/login_signup/divider.dart";
import "package:e_commerce/common/widgets/login_signup/social_buttons.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_form.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_header.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const LoginForm(),

              // Divider
              GeneralDivider(
                dark: dark,
                dividerText: TTexts.orSignInWith,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
