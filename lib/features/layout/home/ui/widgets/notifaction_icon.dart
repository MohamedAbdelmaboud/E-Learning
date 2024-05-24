import 'package:e_learning/features/layout/home/data/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifactionIcon extends StatelessWidget {
  const NotifactionIcon({
    super.key,
    required this.model,
  });

  final NotificationsModel model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(99),
      child: SvgPicture.asset(
        model.imagePath,
        height: 40,
      ),
    );
  }
}
