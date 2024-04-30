import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/common/widgets/underline_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/cousre_items_builder.dart';
import '../widgets/see_more_text.dart';
import '../widgets/text_column.dart';
import 'course_head_text.dart';
import 'skill_item.dart';

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Typography and Layout Design',
            style: AppStyles.bold21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextColumn(),
              Text(
                r'35$',
                style: AppStyles.bold21,
              ),
            ],
          ),
          const Gap(20),
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
          const Gap(28),
          const CousreItemsBuilder(),
          const Gap(24),
          const CourseHeadText(text: 'Skills'),
          const Gap(10),
          // const IntrinsicHeight(
          //   child: Wrap(
          //     clipBehavior: Clip.none,
          //     direction: Axis.horizontal,
          //     spacing: 10,
          //     runSpacing: 13,
          //     children: [
          //       SkillItem(text: 'Typography'),
          //       SkillItem(text: 'Layout composition'),
          //       SkillItem(text: 'Branding'),
          //       SkillItem(text: 'Visual communication'),
          //       SkillItem(text: 'Editorial design')
          //     ],
          //   ),
          // ),
          const Gap(35),
          CustomTextButtonBuilder.normalWithText(
            text: 'ENROLL NOW',
            onTap: () {},
          ),
          const Gap(20),
          const UnderlineText(text: 'Start your 7-day free Trial'),          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
          const UnderlineText(text: 'Start your 7-day free Trial'),
      
        ],
      ),
    );
  }
}
