import 'i_dialog.dart';

abstract class IDialogService {
  bool get isDisplayed;

  Future<void> show(IDialog dialog);

  void close();

  void closeByKey(String key);
}
