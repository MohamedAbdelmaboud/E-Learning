import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      height: 300,
    );
  }
}
