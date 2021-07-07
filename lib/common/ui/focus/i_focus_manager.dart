import 'package:flutter/material.dart';

import './focus_key.dart';
export './focus_key.dart';

/// This Service help us with fields navigation.
/// [FocusManager] is not a singleton, for using - create a variable on the screen widget.
/// FocusManager FocusManager = FocusManager();
/// Params:
///   - [_keys] a private variable for save [FocusKey] for fields on page.
///   After service initialization [_keys] is empty. Use one of methods for add [FocusKey]'s to list: [addKey] or [addAllKeys].
///   - [getKeysValues] This getter will convert [_keys] list to list of string keys.
/// Methods:
///   - [addKey] - For add single [FocusKey] to [_keys].
///   - [addAllKeys] - For add a list of [FocusKey] to [_keys]
///   - [clearKeys] - For remove all [_keys]
///   - [nextFocus] - This function will change a focus to next [FocusKey] in order.
///   - [changeKeyOpeningStatus] - This function will change a [FocusKey.canBeOpened] status.
///   - [getFollowingKeyByValue] - This function will find a next [FocusKey] in order with using [FocusKey.value].
///   - [getKeyByValue] - This function will get a [FocusKey] from [_keys] with using [FocusKey.value].
///   - [getKeyByOrder] - This function will get a [FocusKey] from [_keys] with using [FocusKey.order].
///   - [_findNextOrder] - This function will find a [int] index of next [FocusKey].
abstract class IFocusManager {
  /// This getter will convert [_keys] list to list of string keys.
  List<String> get getKeysValues;

  bool get hasFocusKey;

  /// This function is need it for adding a single [FocusKey] to [_keys].
  void addKey(FocusKey key);

  /// This function is need it for adding a list of [FocusKey]'s to [_keys].
  void addAllKeys(List<FocusKey> keys);

  /// This function is need it for clearing [_keys] list.
  void clearKeys();

  /// This function is need it for change a request focus to next [FocusKey] in order.
  /// Function [nextFocus] will use [getFollowingKeyByValue] for find next [FocusKey].
  /// If [FocusKey] with next order was found - we use function [requestFocus] method of [FocusScope] class.
  /// If [FocusKey] with next order was not found - we use function [unfocus] of [FocusScope] class.
  void nextFocus({required BuildContext context, required String currentFocusKeyValue});

  /// This function is need it for change a [FocusKey.canBeOpened] status by [FocusKey.value].
  /// Function [changeKeyOpeningStatus] will use [for] method for find current [FocusKey] by [FocusKey.value].
  /// If [FocusKey] in [_keys] with value [currentFocusKeyValue] was found - value of [FocusKey] will be changed to [status].
  /// If [FocusKey] in [_keys] with value [currentFocusKeyValue] was not found - nothing.
  void changeKeyOpeningStatus({required bool status, required String currentFocusKeyValue});

  /// This function is need it for get a next [FocusKey] in order by [FocusKey.value].
  /// This function will use next functions: [getFollowingKeyByValue], [_findNextOrder], [getKeyByOrder] for get following [FocusKey].
  /// If each function will not found result - this function will return [Null].
  FocusKey? getFollowingKeyByValue(String value);

  /// This function is need it for get [FocusKey] by [FocusKey.value].
  /// This function will use [_keys.indexWhere] function for find the index [FocusKey] with [value].
  /// if [_keys.indexWhere] will return the [-1] - Function will return a [Null] value and will print to console result.
  FocusKey? getKeyByValue(String value);

  /// This function is need it for get [FocusKey] by [FocusKey.order]
  /// This function will use [_keys.indexWhere] function for find the index [FocusKey] with [order].
  /// if [_keys.indexWhere] will return the [-1] - Function will return a [Null] value and will print to console result.
  FocusKey? getKeyByOrder(int order);

  void addListener(VoidCallback listener);

  void removeListener(VoidCallback listener);

  void notifiListeners();
}
