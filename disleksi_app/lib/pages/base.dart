import 'package:disleksi_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePage<T> extends GetView<T> {
  const BasePage({super.key});

  Widget buildBody(BuildContext context);

  AppBar? get appBar => null;

  @override
  Widget build(BuildContext context) {
    // Build body first so we won't have to
    // rebuild it when the theme changes
    final Widget child = buildBody(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBar,
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: Container(
            color: AppColors.white,
            child: MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(1.0), boldText: false, padding: const EdgeInsets.all(0)),
              child: SafeArea(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
