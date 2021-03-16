import 'package:base_project_template/domain/theme/interfaces/i_app_edge_insets.dart';
import 'package:flutter/painting.dart';

class AppEdgeInsets implements IAppEdgeInsets {
  @override
  EdgeInsets? primaryEdgeInsets;

  AppEdgeInsets({
    this.primaryEdgeInsets,
  });
}
