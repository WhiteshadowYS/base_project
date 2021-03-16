import 'package:base_project_template/domain/theme/models/app_colors.dart';
import 'package:base_project_template/domain/theme/models/app_edge_insets.dart';
import 'package:base_project_template/domain/theme/models/app_text_styles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme({
    final String? themeName,
    AppColors? colors,
    AppTextStyles? textStyles,
    AppEdgeInsets? edgeInsets,
  }) = _AppTheme;

  factory AppTheme.fromJson(Map<String, dynamic> json) => _$AppThemeFromJson(json);
}
