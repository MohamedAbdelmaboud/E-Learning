import '../../../../../common/utils/assets.dart';

class NotificationsModel {
  final String title;
  final String description;
  final String date;
  final String imagePath;
  NotificationsModel(
      {required this.title,
      required this.description,
      required this.date,
      required this.imagePath});
}

List<NotificationsModel> notifications = [
  NotificationsModel(
      imagePath: Assets.assetsImagesCheck,
      title: 'Transaction Completed',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      imagePath: Assets.assetsImagesMenu,
      title: 'Due Date is Near',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      imagePath: Assets.assetsImagesCheck,
      title: 'Transaction Completed',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      imagePath: Assets.assetsImagesCheck,
      title: 'Transaction Completed',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      imagePath: Assets.assetsImagesLike,
      title: 'Lesson Completed',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      imagePath: Assets.assetsImagesLike,
      title: 'New Post',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
];
