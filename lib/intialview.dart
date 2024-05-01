import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'common/widgets/custom_app_bar.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Temp Page',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.pages[index]);
            },
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Text(
                  _convertToReadableString(AppRouter.pages[index]),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
          itemCount: AppRouter.pages.length,
        ),
      ),
    );
  }

  String _convertToReadableString(String input) {
    input = input.replaceAll('/', '');
    String output = '';

    for (var char in input.characters) {
      if (char.contains(RegExp(r'[A-Z]')) && output.isNotEmpty) {
        output += '\n${char.toLowerCase()}';
      } else {
        output += char;
      }
    }
    return output;
  }
}
