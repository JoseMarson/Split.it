import 'package:split_it/theme/app_colors.dart';
import 'package:split_it/theme/app_gradients.dart';
import 'package:split_it/theme/app_text_styles.dart';

class AppTheme {
  static AppColors get colors => AppColorsDefault();
  static AppGradients get gradients => AppGradientesDefault();
  static AppTextStyles get textStyles => AppTextStylesDefault();
}

void test() {
  AppTheme.colors.backgroundSecondary;
}
