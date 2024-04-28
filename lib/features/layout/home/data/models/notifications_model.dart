class NotificationsModel {
  final String title;
  final String description;
  final String date;
  NotificationsModel(
      {required this.title, required this.description, required this.date});
}
List <NotificationsModel> notifications = [
  NotificationsModel(
      title: 'New Post',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      title: 'Due Date is Near',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      title: 'Lesson Completed',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
  NotificationsModel(
      title: 'New Post',
      description: 'Lorem ipsum dolor sit amet',
      date: '10 minutes ago'),
];