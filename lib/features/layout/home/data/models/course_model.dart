class CourseModel {
  final int id;
  final String title;
  final double rating;
  final String imagePath;
  final String channelName;
  final String description;
  final int? progress;
  final int studentsCount;

  const CourseModel({
    required this.id,
    required this.title,
    required this.rating,
    required this.imagePath,
    required this.channelName,
    required this.description,
    required this.studentsCount,
    this.progress,
  });
}
