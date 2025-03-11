import "package:e_commerce/common/styles/spacing_styles.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_footer.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_form.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_header.dart";
import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get_utils/src/extensions/export.dart";

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
              LoginForm(),

              // Divider
              Row(
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
                    TTexts.orSignInWith.capitalize!,
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
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
