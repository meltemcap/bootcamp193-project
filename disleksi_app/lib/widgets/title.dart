import 'package:flutter/material.dart';

abstract class BaseText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final List<Shadow>? shadows;
  final int? maxLines;

  const BaseText(
    super.data, {
    super.key,
    super.textAlign,
    this.color,
    this.fontWeight,
    this.align,
    this.shadows,
    this.maxLines,
  });

  TextStyle getTextStyle(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: getTextStyle(context).copyWith(color: color, fontWeight: fontWeight, shadows: shadows),
      textAlign: align,
      maxLines: maxLines,
    );
  }
}

class ButtonText extends BaseText {
  const ButtonText(super.data, {super.key, super.color, super.fontWeight, super.align});

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.titleSmall!;
}

class TitleText extends BaseText {
  const TitleText(super.data, {super.key, super.color, super.fontWeight}) : super(align: TextAlign.center);

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.displayLarge!;
}

class CardTitleText extends BaseText {
  const CardTitleText(super.data, {super.key, super.color, super.fontWeight});

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.displayMedium!;
}

class SubtitleText extends BaseText {
  const SubtitleText(super.data, {super.key, super.color, super.fontWeight, super.align});

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.headlineSmall!;
}

class BodyLargeText extends BaseText {
  const BodyLargeText(super.data, {super.key, super.color, super.fontWeight, super.maxLines, super.align});

  @override
  TextStyle getTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(overflow: TextOverflow.ellipsis);
}

class BodyMediumText extends BaseText {
  const BodyMediumText(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.shadows,
    super.maxLines,
    super.align,
  });

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.bodyMedium!;
}

class Text14 extends BaseText {
  const Text14(super.data, {super.key, super.color, super.fontWeight, super.shadows, super.maxLines, super.align});

  @override
  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.headlineLarge!;
}
