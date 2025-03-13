import 'package:e_commerce/common/widgets/common_shapes/containers/primary_header.dart';
import 'package:e_commerce/common/widgets/common_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/features/authentication/screens/home/widgets/app_bar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: PrimaryHeaderContainer(
                child: Column(
                  children: [
                    const THomeAppBar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.defaultSpace,
                      ),
                      child: Container(
                        width: TDeviceUtils.getScreenWidth(context),
                        padding: const EdgeInsets.all(TSizes.md),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(TSizes.cardRadiusLg),
                            border: Border.all(color: TColors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
