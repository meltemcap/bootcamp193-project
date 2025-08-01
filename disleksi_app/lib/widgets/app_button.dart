import 'package:disleksi_app/constants/colors.dart';
import 'package:disleksi_app/constants/radius.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final double height;
  final bool isDisabled;
  const AppButton({
    super.key,
    required this.child,
    this.onPressed,
    this.style,
    this.height = 40,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: AppRadius.circular10, color: AppColors.chatTextColor),
      width: MediaQuery.of(context).size.width,
      height: height,
      child: ElevatedButton(style: style, onPressed: onPressed, child: child),
    );
  }
}
