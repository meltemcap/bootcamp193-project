import 'package:disleksi_app/constants/colors.dart';
import 'package:disleksi_app/controllers/login.dart';
import 'package:disleksi_app/models/user.dart';
import 'package:disleksi_app/pages/home.dart';
import 'package:disleksi_app/services/auth.dart';
import 'package:disleksi_app/widgets/app_button.dart';
import 'package:disleksi_app/widgets/gap.dart';
import 'package:disleksi_app/widgets/text_form_field.dart';
import 'package:disleksi_app/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base.dart';

class LoginPage extends BasePage<LoginController> {
  // Route name of the page
  static const String routeName = '/login';

  const LoginPage({super.key});

  AuthService get authService => Get.find<AuthService>();

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
      child: Column(
        children: [
          TitleText('Giriş / Kayıt'),
          VerticalGap(height: 30),
          Image.asset(width: 400, height: 160, "assets/login.png", fit: BoxFit.fill),
          VerticalGap(height: 30),
          Form(
            key: controller.formKey,
            child: AppTextFormField(
              onSaved: (newValue) => authService.userMail = newValue ?? "",
              validator: (value) {
                if (value == null || value == '') {
                  return 'Lütfen geçerli bir mail adresi girin';
                }
                return null;
              },
              prefixIcon: Icon(Icons.mail_outline, color: AppColors.primaryBackgroundColorDark),
              hintText: 'Lütfen Mail Adresinizi Giriniz',
            ),
          ),
          VerticalGap(height: 30),
          AppButton(
            onPressed: () async {
              if (controller.formKey.currentState!.validate()) {
                controller.formKey.currentState!.save();
                for (User user in controller.userList) {
                  if (user.email == authService.userMail) {
                    authService.user = user;
                    Get.offNamed(HomePage.routeName);
                    Get.snackbar('Success', 'Hesabınıza Başarıyla Giriş Yapıldı', snackPosition: SnackPosition.BOTTOM);
                    return;
                  }
                }
                await controller.createUser(authService.userMail, authService.userMail);
              }
            },
            child: ButtonText("Giriş / Kayıt"),
          ),
        ],
      ),
    );
  }
}
