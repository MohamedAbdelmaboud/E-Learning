import 'package:e_learning/features/layout/home/cubit/categories_cubit.dart';
import 'package:e_learning/features/layout/home/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesCubitState>(
      builder: (context, state) {
        return state is CategoriesSuccessState
            ? _buildCategoriesList(state.categories)
            : const SizedBox();
      },
    );
  }

  Widget _buildCategoriesList(List<String> categories) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 10,
      children: categories.map((category) => CategoryItem(category)).toList(),
    );
  }
}
