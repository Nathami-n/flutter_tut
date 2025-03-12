import 'package:e_commerce/common/widgets/login_signup/divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              children: [
                // titlle
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // form
                Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwInputFields,
                          ),
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: TTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: TTexts.email,
                          prefixIcon: Icon(Iconsax.direct),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: TTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Iconsax.eye_slash),
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.lock),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      // terms and conditions
                      Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Checkbox(value: true, onChanged: (value) {}),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: "${TTexts.iAgreeTo} ",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                  text: "${TTexts.privacyPolicy} ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                          color: dark
                                              ? TColors.white
                                              : TColors.primary),
                                ),
                                TextSpan(
                                    text: "${TTexts.and} ",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                  text: TTexts.termsOfUse,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                          color: dark
                                              ? TColors.white
                                              : TColors.primary),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      // signup button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(TTexts.createAccount),
                        ),
                      )
                    ],
                  ),
                ),

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
