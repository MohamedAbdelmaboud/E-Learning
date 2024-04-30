import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/widgets/custom_item_builder.dart';
import 'package:flutter/material.dart';

class ProfileItemsBuilder extends StatelessWidget {
  const ProfileItemsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView.builder(
        itemCount: profileItemsModels.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 38.0),
            child: CustomItemBuilder.profileItem(
              model: profileItemsModels[index],
            ),
          );
        },
      ),
    );
  }
}
