import 'package:e_learning/features/layout/home/data/models/course_model.dart';

class HomeViewModel {
  static List<String> categories = [
    'Graphic Design',
    'User Interface',
    'User Experience',
    'Web Development',
    'Mobile Development',
    'Data Science',
    'Artificial Intelligence',
    'Machine Learning',
    'Cybersecurity',
    'Game Development',
    'Digital Marketing',
    'UI/UX Design',
    'Product Management',
    'Cloud Computing',
    'Blockchain',
  ];

  static const List<CourseModel> _courses = [
    CourseModel(
      id: 1,
      title: 'Flutter Development for Beginners',
      rating: 4.8,
      studentsCount: 3457,
      imagePath: 'course1',
      channelName: 'Flutter Academy',
      description:
          'Learn the basics of Flutter development and build your first mobile app.',
      progress: 73,
    ),
    CourseModel(
      id: 2,
      title: 'Advanced Flutter Techniques',
      rating: 4.6,
      studentsCount: 5325,
      imagePath: 'course2',
      channelName: 'Flutter Academy',
      description:
          'Dive deeper into Flutter with advanced techniques and best practices.',
      progress: 40,
    ),
    CourseModel(
      id: 3,
      title: 'Flutter Widgets and State Management',
      rating: 4.7,
      studentsCount: 6324,
      imagePath: 'course3',
      channelName: 'Flutter Academy',
      description:
          'Master Flutter widgets and state management to create dynamic apps.',
    ),
    CourseModel(
      id: 4,
      title: 'JavaScript Essentials',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course4',
      channelName: 'JS World',
      description: 'A comprehensive guide to the fundamentals of JavaScript.',
    ),
    CourseModel(
      id: 5,
      title: 'JavaScript for Web Development',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course5',
      channelName: 'JS World',
      description:
          'Learn how to use JavaScript to build interactive web applications.',
    ),
    CourseModel(
      id: 6,
      title: 'Modern JavaScript Frameworks',
      rating: 4.7,
      studentsCount: 6324,
      imagePath: 'course6',
      channelName: 'JS World',
      description:
          'Explore modern JavaScript frameworks like React, Vue, and Angular.',
    ),
    CourseModel(
      id: 7,
      title: 'Python for Beginners',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course7',
      channelName: 'Python Hub',
      description:
          'An introduction to Python programming for complete beginners.',
    ),
    CourseModel(
      id: 8,
      title: 'Intermediate Python Programming',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course8',
      channelName: 'Python Hub',
      description:
          'Take your Python skills to the next level with this intermediate course.',
    ),
    CourseModel(
      id: 9,
      title: 'Python for Data Science',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course9',
      channelName: 'Python Hub',
      description:
          'Learn Python for data analysis, visualization, and machine learning.',
    ),
    CourseModel(
      id: 10,
      title: 'Advanced Python Techniques',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course10',
      channelName: 'Python Hub',
      description:
          'Master advanced Python programming techniques and best practices.',
    ),
  ];

  static List<CourseModel> get suggestionsCourses =>
      _repeatCourses(_courses.sublist(2, 5));

  static List<CourseModel> get inProgressCourses =>
      _repeatCourses(_courses.sublist(0, 2), count: 1);

  static List<CourseModel> get savedCourses =>
      _repeatCourses(_courses.sublist(2, 6), count: 1);

  static List<CourseModel> get completeCourses =>
      _repeatCourses(_courses.sublist(6, 10), count: 1);

  static List<CourseModel> get topCourses =>
      _repeatCourses(_courses.sublist(7, 10));

  static List<CourseModel> _repeatCourses(
    List<CourseModel> courses, {
    int count = 5,
  }) {
    return List.generate(
        courses.length * count, (index) => courses[index % courses.length]);
  }
}
