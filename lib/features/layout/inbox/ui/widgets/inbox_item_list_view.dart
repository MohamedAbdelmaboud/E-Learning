import 'package:e_learning/features/layout/inbox/ui/widgets/inbox_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../common/utils/assets.dart';
import '../../data/models/inbox_item_model.dart';

class InboxItemListView extends StatelessWidget {
  const InboxItemListView({
    super.key,
  });
  static List<InboxItemModel> items = [
    InboxItemModel(
      title: 'Rashad',
      subTitle: "Keep going, you're doing great!",
      imagePath: Assets.assetsImagesRashad,
    ),
    InboxItemModel(
      title: 'Abdelmaboud',
      subTitle: 'Every step you take is a step closer to success.',
      imagePath: Assets.assetsImagesAbdo,
    ),
    InboxItemModel(
      title: 'Omar Ahmed',
      subTitle: 'Need help with a topic?',
      imagePath: Assets.assetsImagesOmar,
    ),
    InboxItemModel(
      title: 'Omar Ahmed',
      subTitle: 'Keep up the excellent work!',
      imagePath: Assets.assetsImagesOmar,
    ),
    InboxItemModel(
      title: 'Tharwat Samy',
      subTitle: "Don't forget to take breaks! ",
      imagePath: Assets.assetsImagesTharwat,
    ),
    InboxItemModel(
      title: 'Tharwat Samy',
      subTitle: "Don't forget to check out the latest updates. ",
      imagePath: Assets.assetsImagesTharwat,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(20),
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InboxItem(
          inboxItemModel: items[index],
        );
      },
    );
  }
}
