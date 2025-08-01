import 'package:disleksi_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends TextFormField {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;

  AppTextFormField({
    super.key,
    super.controller,
    super.enabled,
    super.keyboardType,
    super.obscureText,
    super.onChanged,
    super.onEditingComplete,
    super.onSaved,
    super.onTap,
    super.onFieldSubmitted,
    super.style,
    super.textAlign,
    super.validator,
    super.maxLines,
    super.minLines,
    super.maxLength,
    super.textInputAction,
    super.textCapitalization,
    super.inputFormatters,
    super.initialValue,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
  }) : super(
         onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
         decoration: InputDecoration(
           contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
           prefixIcon: prefixIcon,
           suffixIcon: suffixIcon,
           hintText: hintText,
           counterText: '',
           filled: true,
           fillColor: AppColors.white,
         ),
       );
}
