import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/app_images.dart';
import '../../../utils/styles.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenView({super.key});
  @override
  final SplashScreenController controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Style().reg(
            text: "CONNECTING",
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          Lottie.asset(
            AppImages.loading,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    ));
  }
}
