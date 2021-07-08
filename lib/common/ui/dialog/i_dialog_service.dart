import 'i_dialog.dart';
import 'package:logging/logging.dart';

abstract class IDialogService {
  Logger get logger => Logger('[$runtimeType]');

  bool get isDisplayed;

  Future<void> show(IDialog dialog);

  void close();
}
