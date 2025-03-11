import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                            TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
