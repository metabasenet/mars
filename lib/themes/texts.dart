part of themes;

extension TextStyles on BuildContext {
  TextStyle get textFont => const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      );

  TextStyle get textPriceFont => const TextStyle(
        fontFamily: 'DINPro',
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
        height: 1,
      );

  FontWeight _getBold(bool bold, FontWeight fontWeight) {
    if (fontWeight == null) {
      return bold == true ? FontWeight.w500 : FontWeight.normal;
    }
    return fontWeight;
  }

  /// 28px #333333
  TextStyle textHuge(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 28.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
      height: 1,
    );
  }

  /// 18px #333333
  /// [Only for Page Header Title AppBar]
  TextStyle textTitle(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 18.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 18px #333333
  TextStyle textBig(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 18.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 16px #333333
  TextStyle textMedium({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
    double? lineHeight,
  }) {
    return textFont.copyWith(
      fontSize: 16.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
      height: lineHeight ?? 1,
    );
  }

  /// 15px #333333
  TextStyle textBody({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
    double? lineHeight,
  }) {
    return textFont.copyWith(
      fontSize: 15.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
      height: lineHeight ?? 1,
    );
  }

  /// 15px #999999
  TextStyle textPlaceholder(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 15.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? placeholderColor,
    );
  }

  /// 15px #333333
  /// [Only for CSButton widgets]
  TextStyle textButton(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 15.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 14px #999999
  TextStyle textSecondary({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
    double? lineHeight,
  }) {
    return textFont.copyWith(
      fontSize: 14.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
      height: lineHeight ?? 1,
    );
  }

  /// 12px #999999
  TextStyle textSmall({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
    double? lineHeight,
  }) {
    return textFont.copyWith(
      fontSize: 12,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
      height: lineHeight ?? 1,
    );
  }

  /// 10px #999999
  TextStyle textTiny(
      {required bool bold, required FontWeight fontWeight, Color? color}) {
    return textFont.copyWith(
      fontSize: 10,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
    );
  }

  //** Style For Numbers */

  /// 28px #333333
  TextStyle textHugePrice({
    bool bold = true,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 28.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 24px #333333
  TextStyle textBigPrice({
    bool bold = true,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 24.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 20px #333333
  TextStyle textMediumPrice({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 20.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 15px #333333
  TextStyle textBodyPrice({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 15.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? bodyColor,
    );
  }

  /// 14px #333333
  TextStyle textSecondaryPrice({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 14.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
    );
  }

  /// 13px #333333
  TextStyle textSmallPrice({
    bool bold = false,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 13.0,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
    );
  }

  /// 10.5px #333333
  TextStyle textTinyPrice({
    required bool bold,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return textPriceFont.copyWith(
      fontSize: 10.5,
      fontWeight: _getBold(bold, fontWeight),
      color: color ?? secondaryColor,
    );
  }
}
