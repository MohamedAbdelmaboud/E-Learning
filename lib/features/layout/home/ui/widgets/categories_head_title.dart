import 'package:e_learning/features/layout/home/cubit/categories_cubit.dart';
import 'package:e_learning/features/layout/home/ui/widgets/head_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesHeadTitle extends StatelessWidget {
  const CategoriesHeadTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesCubitState>(
      builder: (context, state) {
        final cubit = CategoriesCubit.get(context);
        return HeadTextRow(
          'Categories',
          onPressed: cubit.changeSeeAll,
          seeAll: !cubit.seeAll,
        );
      },
    );
  }
}
