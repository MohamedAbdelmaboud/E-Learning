part of 'categories_cubit.dart';

abstract class CategoriesCubitState {}

class CategoriesInitial extends CategoriesCubitState {}

class CategoriesSuccessState extends CategoriesCubitState {
  CategoriesSuccessState(this.categories);
  final List<String> categories;
}
