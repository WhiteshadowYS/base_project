import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:base_project/utils/res/app_data.dart';

class AppNotification extends StatelessWidget {
  final bool isReaded;
  final String content;
  final DateTime dateTime;

  AppNotification({
    required this.isReaded,
    required this.content,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: DefaultAppColors.greyTwo,
          ),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 30.0,
        right: 30.0,
        bottom: 25.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              content,
              style: AppData.textStyles.body(
                color: isReaded ? DefaultAppColors.grey : DefaultAppColors.black,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              DateFormat('dd MMMM HH:mm', 'en').format(dateTime),
              style: AppData.textStyles.caption2(
                color: isReaded ? DefaultAppColors.grey : DefaultAppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
