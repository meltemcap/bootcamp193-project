import 'package:flutter/material.dart';

sealed class AppRadius {
  static const BorderRadius circular10 = BorderRadius.all(Radius.circular(10));
  static const BorderRadius circular5 = BorderRadius.all(Radius.circular(5));
  static const BorderRadius circular15 = BorderRadius.all(Radius.circular(15));
  static const BorderRadius circular20 = BorderRadius.all(Radius.circular(20));
  static const BorderRadius circular25 = BorderRadius.all(Radius.circular(25));
  static const BorderRadius circular40 = BorderRadius.all(Radius.circular(40));
  static const BorderRadius circulartop25 = BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );
}
