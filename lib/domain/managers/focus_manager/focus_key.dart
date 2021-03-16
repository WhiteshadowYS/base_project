import 'package:flutter/material.dart';

/// FocusKey class it is main class for contain [Focus] data.
/// Params:
///   - [value] - This [String] variable will save a main key. Also this key was using for fields with [Focus] function.
///   - [order] - This [int] variable will using for find the next [Focus] order in [FocusKey] list.
///   - [canBeOpened] - This [bool] variable will using for track is field with this [FocusKey] can be opened.
///   - [FocusNode] - It is basic [Flutter] type for tracking the [Focus] state.
class FocusKey {
  final String value;
  final int order;
  final FocusNode focusNode = FocusNode();
  bool canBeOpened;

  FocusKey({
    required this.value,
    required this.order,
    this.canBeOpened = true,
  });

  static const int maxKeyValue = 99999;

  @override
  String toString() {
    return 'FocusKey{value: $value, order: $order, focusNode: $focusNode, canBeOpened: $canBeOpened}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FocusKey &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          order == other.order &&
          focusNode == other.focusNode &&
          canBeOpened == other.canBeOpened;

  @override
  int get hashCode => value.hashCode ^ order.hashCode ^ focusNode.hashCode ^ canBeOpened.hashCode;
}
