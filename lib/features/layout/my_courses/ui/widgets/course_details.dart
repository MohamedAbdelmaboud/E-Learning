import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/underline_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../../common/widgets/custom_text_button_builder.dart';
import '../../../../../common/widgets/skills_content.dart';
import '../widgets/cousre_items_builder.dart';
import '../widgets/see_more_text.dart';
import '../widgets/text_column.dart';
import 'course_head_text.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({
    super.key,
  });

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  bool readMore = false;
  String text =
      "Visual Communication College's Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Typography and Layout Design',
            style: AppStyles.bold21,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextColumn(),
                Text(
                  r'35$',
                  style: AppStyles.bold21,
                ),
              ],
            ),
          ),
          const Gap(10),
          const CourseHeadText(text: 'Course Details'),
          const Gap(10),
          SeeMoreText(
            readMore: readMore,
            text: text,
            onTap: () {
              setState(() {
                readMore = !readMore;
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: CousreItemsBuilder(),
          ),
          const SkillsContent(),
          const Gap(35),
          Padding(
            child: CustomTextButtonBuilder.normalWithText(
              text: 'ENROLL NOW',
              onTap: () {},
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14),
          ),
          const Gap(20),
          const Center(
              child: UnderlineText(text: 'Start your 7-day free Trial'))
        ],
      ),
    );
  }
}
