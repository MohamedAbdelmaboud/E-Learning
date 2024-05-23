import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../common/utils/app_colors.dart';
import '../../../../../common/utils/app_styles.dart';
import '../../../../../common/widgets/custom_text_button.dart';
import '../widgets/course_head_text.dart';
import '../widgets/course_video.dart';

class CourseContentView extends StatelessWidget {
  const CourseContentView(this.coursePath, {super.key});
  final String coursePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CourseVideo(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: TitleCol(),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customCourseTime(text: 'Week 1'),
                          customCourseTime(text: 'Week 2'),
                          customCourseTime(text: 'Week 3'),
                          customCourseTime(text: 'Week 4'),
                        ],
                      ),
                    ),
                    const Gap(20),
                    const Center(
                        child: CourseHeadText(text: 'Course Contents')),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Lecture 1: Principles of Typography ',
                        style: AppStyles.medium14,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.withOpacity,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Gap(15),
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return const LectureItem();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  customCourseTime({required String text, double? width, double? hight}) {
    return IntrinsicWidth(
      child: CustomTextButton(
        onTap: () {},
        width: width,
        hight: hight,
        bgColor: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: 5.0,
        borderColor: AppColors.primaryColor,
        child: Text(
          text,
          style: AppStyles.regular12.copyWith(),
        ),
      ),
    );
  }
}

class LectureItem extends StatelessWidget {
  const LectureItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Legibility vs. Readability',
                style: AppStyles.medium13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.65,
                      child: Text(
                        'Legibility refers to the ease with which individual characters can be distinguished from one another, while readability is...',
                        maxLines: 2, // Allow text to wrap
                        overflow: TextOverflow
                            .ellipsis, // Add ellipsis if overflow occurs
                        style: AppStyles.regular12,
                      ),
                    ),
                    SvgPicture.asset(Assets.assetsImagesDoneIcon)
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}

class TitleCol extends StatelessWidget {
  const TitleCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Typography and Layout Design',
          style: AppStyles.bold21,
        ),
        const Gap(5),
        Text(
          'Visual Communication College',
          style: AppStyles.medium14,
        ),
      ],
    );
  }
}
