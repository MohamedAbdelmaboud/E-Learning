import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SeeMoreText extends StatelessWidget {
  const SeeMoreText({
    super.key,
    required this.readMore,
    required this.text,
    this.onTap,
  });

  final bool readMore;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: readMore
                ? text
                : '${text.substring(0, 200)}${readMore ? '' : '...'}',
            style: AppStyles.regular12.copyWith(letterSpacing: 1.2),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                readMore ? " Read less" : " Read more",
                style: const TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
