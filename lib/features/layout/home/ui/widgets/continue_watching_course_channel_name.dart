import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContinueWatchingCourseChannelName extends StatelessWidget {
  const ContinueWatchingCourseChannelName(
    this.channelName, {
    super.key,
  });

  final String channelName;
  @override
  Widget build(BuildContext context) {
    return Text(
      channelName,
      style: AppStyles.medium12,
    );
  }
}
