import 'package:e_learning/features/intro/data/models/page_model.dart';
import 'package:e_learning/features/intro/ui/widgets/body_widget.dart';
import 'package:e_learning/features/intro/ui/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.pageModel,
  });
  final PageModel pageModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          imagePath: pageModel.imagePath,
        ),
        BodyWidget(
          title: pageModel.title,
          subTitle: pageModel.subTitle,
        ),
        const Gap(50),
      ],
    );
  }
}
