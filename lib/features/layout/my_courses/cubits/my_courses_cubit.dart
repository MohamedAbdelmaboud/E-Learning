import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:e_learning/features/layout/home/data/view_model/home_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_courses_state.dart';

class MyCoursesCubit extends Cubit<MyCoursesCubitState> {
  MyCoursesCubit() : super(MyCoursesInitial());

  static MyCoursesCubit get(context) => BlocProvider.of(context);

  int index = 0;

  List<CourseModel> courses = [];

  void changeIndex(int index) {
    this.index = index;
    switch (index) {
      case 0:
        fetchSavedCourses();
        break;
      case 1:
        fetchInProgressCourses();
        break;
      case 2:
        fetchCompleteCourses();
        break;
      default:
        break;
    }
    emit(MyCoursesSuccessState());
  }

  void fetchSavedCourses() {
    courses
      ..clear()
      ..addAll(HomeViewModel.savedCourses);
    emit(MyCoursesSuccessState());
  }

  void fetchInProgressCourses() {
    courses
      ..clear()
      ..addAll(HomeViewModel.inProgressCourses);
    emit(MyCoursesSuccessState());
  }

  void fetchCompleteCourses() {
    courses
      ..clear()
      ..addAll(HomeViewModel.completeCourses);
    emit(MyCoursesSuccessState());
  }
}
