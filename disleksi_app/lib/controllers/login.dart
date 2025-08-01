import 'dart:convert';

import 'package:disleksi_app/models/user.dart';
import 'package:disleksi_app/pages/home.dart';
import 'package:disleksi_app/providers/base.dart';
import 'package:disleksi_app/providers/user.dart';
import 'package:disleksi_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  UserProvider userProvider = Get.find<UserProvider>();

  AuthService get authService => Get.find<AuthService>();

  List<User> userList = [];

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  Future<void> getUsers() async {
    final response = await userProvider.getUsers();

    if (!response.isOk) {
      Get.snackbar('Error', 'Bir Hata Oluştu', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    var data = jsonDecode(response.bodyString!);

    userList.addAll(User.fromList(List<ApiObject>.from(data)));
  }

  Future<void> createUser(String userName, String email) async {
    final response = await userProvider.createUser(userName: userName, email: email);

    if (!response.isOk) {
      Get.snackbar('Error', 'Bir Hata Oluştu', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    await getUsers();
    for (User user in userList) {
      if (user.email == authService.userMail) {
        authService.user = user;
        break;
      }
    }

    Get.snackbar('Success', 'Hesap Başarıyla Oluşturuldu', snackPosition: SnackPosition.BOTTOM);
    Get.offNamed(HomePage.routeName);
  }
}
