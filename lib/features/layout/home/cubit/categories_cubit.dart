import 'package:e_learning/features/layout/home/data/view_model/home_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categories_cubit_state.dart';

class CategoriesCubit extends Cubit<CategoriesCubitState> {
  CategoriesCubit() : super(CategoriesInitial());

  static CategoriesCubit get(context) => BlocProvider.of(context);

  bool seeAll = false;

  void fetchData() {
    final List<String> categories =
        List.from(HomeViewModel.categories.sublist(0, 3));
    seeAll = false;
    emit(CategoriesSuccessState(categories));
  }

  void changeSeeAll() {
    final List<String> categories;
    if (seeAll) {
      categories = List.from(HomeViewModel.categories.sublist(0, 3));
      seeAll = false;
    } else {
      categories = List.from(HomeViewModel.categories);
      seeAll = true;
    }
    emit(CategoriesSuccessState(categories));
  }
}
