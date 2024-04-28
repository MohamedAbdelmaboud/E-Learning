
import '../../../../common/utils/assets.dart';

class PageModel {
  final String imagePath;
  final String title;
  final String subTitle;
  const PageModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<PageModel> pages = [
  const PageModel(
    imagePath: Assets.assetsImagesLearningBro,
    title: 'Enter the World of E-Learning',
    subTitle: 'Begin your educational journey with a diverse range of courses.',
  ),
  const PageModel(
    imagePath: Assets.assetsImagesOnlinelearningAmico,
    title: 'Embark on Your Learning Adventure',
    subTitle:
        'Explore interactive lessons, quizzes, and multimedia content to enhance your understanding.',
  ),
  const PageModel(
    imagePath: Assets.assetsImagesWebinarRafiki,
    title: 'Engage with Expert Instructors',
    subTitle: 'Connect with knowledgeable tutors for personalized guidance.',
  ),
];
