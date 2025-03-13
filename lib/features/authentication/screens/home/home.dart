import 'package:e_commerce/common/widgets/common_shapes/containers/primary_header.dart';
import 'package:e_commerce/common/widgets/common_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/features/authentication/screens/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: PrimaryHeaderContainer(
                child: THomeAppBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
