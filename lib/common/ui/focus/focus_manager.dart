import 'package:flutter/material.dart' show VoidCallback, BuildContext, FocusScope;
import 'package:logging/logging.dart';

import 'i_focus_manager.dart';
import './focus_key.dart';
export './focus_key.dart';

class FocusManager implements IFocusManager {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  bool _hasFocusKey = false;
  final List<VoidCallback> _listeners = [];

  @override
  bool get hasFocusKey => _hasFocusKey;

  final List<FocusKey> _keys = [];

  @override
  List<String> get getKeysValues => _keys.map<String>((e) => e.value).toList();

  @override
  void addKey(FocusKey key) => _keys.add(key);

  @override
  void addAllKeys(List<FocusKey> keys) => _keys.addAll(keys);

  @override
  void clearKeys() => _keys.clear();

  @override
  void nextFocus({required BuildContext context, required String currentFocusKeyValue}) {
    final FocusKey? nKey = getFollowingKeyByValue(currentFocusKeyValue);

    if (nKey == null) {
      _hasFocusKey = false;
      FocusScope.of(context).unfocus();
      notifiListeners();
      return;
    }

    _hasFocusKey = true;
    FocusScope.of(context).requestFocus(nKey.focusNode);
    notifiListeners();
  }

  @override
  void changeKeyOpeningStatus({required bool status, required String currentFocusKeyValue}) {
    for (FocusKey key in _keys) {
      if (key.value == currentFocusKeyValue) {
        key.canBeOpened = status;
      }
    }
  }

  @override
  FocusKey? getFollowingKeyByValue(String value) {
    final FocusKey? selectedKey = getKeyByValue(value);
    if (selectedKey == null) return null;

    final int? nextOrder = _findNextOrder(selectedKey);
    if (nextOrder == null) return null;

    final FocusKey? nextKey = getKeyByOrder(nextOrder);
    if (nextKey == null) return null;

    return nextKey;
  }

  @override
  FocusKey? getKeyByValue(String value) {
    final int index = _keys.indexWhere((e) => e.value == value);

    if (index == -1) {
      _logger.warning('<getKeyByValue> => key not found');
      return null;
    }

    return _keys[index];
  }

  @override
  FocusKey? getKeyByOrder(int order) {
    final int index = _keys.indexWhere((e) => e.order == order);

    if (index == -1) {
      _logger.warning('<getKeyByValue> => key not found');
      return null;
    }

    return _keys[index];
  }

  int? _findNextOrder(FocusKey key) {
    int tmpOrder = FocusKey.maxKeyValue;

    for (FocusKey nKey in _keys) {
      if (nKey.order > key.order && nKey.order < tmpOrder) {
        final FocusKey? nextKey = getKeyByOrder(nKey.order);

        if (nextKey?.focusNode.context == null) {
          _logger.warning('<_findNextOrder> => key found without clients => continue');
          continue;
        }

        if (!nextKey!.canBeOpened) {
          _logger.warning('<_findNextOrder> => key found but cant be opened => continue');
          continue;
        }

        tmpOrder = nKey.order;
      }
    }

    if (tmpOrder == key.order) {
      _logger.warning('<_findNextOrder> => new order == old order');
      return null;
    }

    if (tmpOrder == FocusKey.maxKeyValue) {
      _logger.warning('<_findNextOrder> => maxKeyValue was found');
      return null;
    }

    return tmpOrder;
  }

  @override
  void addListener(VoidCallback listener) => _listeners.add(listener);

  @override
  void removeListener(VoidCallback listener) => _listeners.remove(listener);

  @override
  void notifiListeners() {
    if (_listeners.isEmpty) return;

    for (VoidCallback listener in _listeners) {
      listener();
    }
  }
}
