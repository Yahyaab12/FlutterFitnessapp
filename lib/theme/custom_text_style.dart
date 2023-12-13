import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumInterBluegray100 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray100,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterGray400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyMediumOnError15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallIntegralCF =>
      theme.textTheme.bodySmall!.integralCF.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallRedA40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA40001,
      );
  static get bodySmallRedA400019 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA40001,
        fontSize: 9.fSize,
      );
  // Display text style
  static get displayLarge64 => theme.textTheme.displayLarge!.copyWith(
        fontSize: 64.fSize,
      );
  static get displayMediumIntegralCFPrimary =>
      theme.textTheme.displayMedium!.integralCF.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w800,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w800,
      );
  static get displayMediumSemiBold => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallIntegralCFWhiteA700 =>
      theme.textTheme.displaySmall!.integralCF.copyWith(
        color: appTheme.whiteA700,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallIntegralCFWhiteA70036 =>
      theme.textTheme.displaySmall!.integralCF.copyWith(
        color: appTheme.whiteA700,
        fontSize: 36.fSize,
      );
  static get displaySmallInterWhiteA700 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeBold_1 => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInter =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineLargeInterLight =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineMediumIntegralCFWhiteA700 =>
      theme.textTheme.headlineMedium!.integralCF.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallIntegralCF =>
      theme.textTheme.headlineSmall!.integralCF.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallIntegralCFBold =>
      theme.textTheme.headlineSmall!.integralCF.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallIntegralCFRegular =>
      theme.textTheme.headlineSmall!.integralCF.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallIntegralCFRegular25 =>
      theme.textTheme.headlineSmall!.integralCF.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallLight => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  // Integral text style
  static get integralCFPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 70.fSize,
        fontWeight: FontWeight.w800,
      ).integralCF;
  // Label text style
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get labelSmallInterWhiteA700 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  // Open text style
  static get openSansWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).openSans;
  // Title text style
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansPrimaryContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOpenSansSemiBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleMediumRedA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA400,
      );
  static get titleMediumRedA40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA40001,
      );
}

extension on TextStyle {
  TextStyle get integralCF {
    return copyWith(
      fontFamily: 'Integral CF',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
