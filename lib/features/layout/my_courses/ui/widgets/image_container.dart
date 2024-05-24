import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.coursePath,
  });

  final String coursePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/$coursePath.png'),
        ),
      ),
    );
  }
}
