import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ChatColumn extends StatelessWidget {
  const ChatColumn({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.bold14,
        ),
        const Gap(5),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .50,
          child: Text(
            subTitle,
            style: AppStyles.regular12,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        )
      ],
    );
  }
}
