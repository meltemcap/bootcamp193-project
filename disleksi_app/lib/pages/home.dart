import 'package:avatar_glow/avatar_glow.dart';
import 'package:disleksi_app/constants/colors.dart';
import 'package:disleksi_app/controllers/home.dart';
import 'package:disleksi_app/controllers/login.dart';
import 'package:disleksi_app/pages/base.dart';
import 'package:disleksi_app/pages/login.dart';
import 'package:disleksi_app/services/auth.dart';
import 'package:disleksi_app/widgets/gap.dart';
import 'package:disleksi_app/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends BasePage<HomeController> {
  static const String routeName = '/home';

  const HomePage({super.key});

  LoginController get loginController => Get.find<LoginController>();

  AuthService get authService => Get.find<AuthService>();

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 50, left: 25, right: 25),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BodyLargeText(authService.userMail),
                IconButton(
                  onPressed: () {
                    Get.offNamed(LoginPage.routeName);
                  },
                  icon: Icon(Icons.exit_to_app),
                ),
              ],
            ),
            VerticalGap(height: 60),
            SubtitleText(
              controller.selectedParagraph.value != null
                  ? controller.selectedParagraph.value!.text
                  : 'Test mesajıdır. Mikforonu açıp konuşmaya başlayın.',
            ),
            VerticalGap(height: 40),
            SubtitleText(controller.text.value, color: AppColors.black),
            Spacer(),
            AvatarGlow(
              glowColor: AppColors.chatTextColor,
              glowRadiusFactor: 0.5,
              animate: controller.isListening.value,
              child: IconButton(
                onPressed: () async {
                  if (controller.isListening.value) {
                    controller.stopListening();
                  } else {
                    controller.startListening();
                  }
                },
                icon: Icon(controller.isListening.value ? Icons.mic : Icons.mic_off, size: 54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
