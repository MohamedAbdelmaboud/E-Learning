import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/underline_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/widgets/custom_text_button_builder.dart';
import '../../../../../common/widgets/skills_content.dart';
import '../../../home/data/models/course_model.dart';
import '../widgets/cousre_items_builder.dart';
import '../widgets/see_more_text.dart';
import 'course_head_text.dart';
import 'course_info.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({
    super.key,
    required this.courseModel,
  });
  final CourseModel courseModel;
  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  bool readMore = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.courseModel.title,
            style: AppStyles.bold21,
          ),
          CourseInfo(
            courseModel: widget.courseModel,
          ),
          const Gap(10),
          const CourseHeadText(text: 'Course Details'),
          const Gap(10),
          SeeMoreText(
            readMore: readMore,
            text: widget.courseModel.description,
            onTap: () {
              setState(() {
                readMore = !readMore;
              });
            },
          ),
          const CourseItemsBuilder(),
          const SkillsContent(),
          const Gap(35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomTextButtonBuilder.normalWithText(
              text: 'ENROLL NOW',
              onTap: () {
                context.push(AppRouter.paymentView);
              },
            ),
          ),
          const Gap(20),
          const Center(
            child: UnderlineText(text: 'Start your 7-day free Trial'),
          )
        ],
      ),
    );
  }
}
