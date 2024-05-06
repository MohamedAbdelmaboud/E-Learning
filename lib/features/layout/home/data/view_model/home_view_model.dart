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
      title: 'UI/UX Design Essentials',
      rating: 4.8,
      studentsCount: 3457,
      imagePath: 'course3',
      channelName: 'Tech Innovations University',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
      progress: 73,
    ),
    CourseModel(
      id: 2,
      title: 'Graphic Design Fundamentals',
      rating: 4.6,
      studentsCount: 5325,
      imagePath: 'course2',
      channelName: 'Creative Arts Institute',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
      progress: 40,
    ),
    CourseModel(
      id: 3,
      title: 'Typography and Layout Design',
      rating: 4.7,
      studentsCount: 6324,
      imagePath: 'course3',
      channelName: 'Creative Arts Institute',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 4,
      title: 'Branding and Identity Design',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course4',
      channelName: 'Innovation and Design School',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 5,
      title: 'Web Design Fundamentals',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course3',
      channelName: 'Web Development University',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 6,
      title: 'Animation and Motion Graphics',
      rating: 4.7,
      studentsCount: 6324,
      imagePath: 'course4',
      channelName: 'Animation Institute of Digital Arts',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 7,
      title: 'Game Design and Development',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course3',
      channelName: 'Game Development Academy',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 8,
      title: 'Product Design and Innovation',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course3',
      channelName: 'Product Design Institute',
      description:
          'UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...',
    ),
    CourseModel(
      id: 9,
      title: 'Branding and Identity Design',
      rating: 4.8,
      studentsCount: 4234,
      imagePath: 'course4',
      channelName: 'Brand Strategy College',
      description:
          'This course explores the fundamentals of branding, brand strategy, and visual identity design. Learn how to ...',
    ),
    CourseModel(
      id: 10,
      title: 'Typography and Layout Design',
      rating: 4.6,
      studentsCount: 2344,
      imagePath: 'course3',
      channelName: 'Visual Communication College',
      description:
          "Visual Communication College's Typography and Layout Design course explores the art and science  ...",
    ),
    CourseModel(
      id: 11,
      title: 'Adobe Photoshop Mastery',
      rating: 4.6,
      studentsCount: 5325,
      imagePath: 'course3',
      channelName: 'Adobe Photoshop Mastery',
      description:
          'Adobe Photoshop Mastery course for aspiring digital artists and photographers. Unlock the full potential of...',
    ),
    CourseModel(
      id: 12,
      title: 'Product Design and Innovation',
      rating: 4.7,
      studentsCount: 6324,
      imagePath: 'course3',
      channelName: 'Digital Arts  Product Design Institute',
      description:
          'This course explores the process of product design from concept to production. Learn design thinking  ...',
    ),
  ];

  static List<CourseModel> get inProgressCourses => _courses.sublist(0, 2);

  static List<CourseModel> get suggestionsCourses => _courses.sublist(2, 5);

  static List<CourseModel> get topCourses => _courses.sublist(5, 8);

  static List<CourseModel> get savedCourses => _courses.sublist(8, 10);

  static List<CourseModel> get completeCourses => _courses.sublist(10, 12);
}
