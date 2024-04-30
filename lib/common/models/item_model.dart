import '../utils/assets.dart';

class ItemModel {
  final String title;
  final String iconPath;
  final String? trailingText;
  ItemModel({required this.title, required this.iconPath, this.trailingText});
}

// for profile
List<ItemModel> profileItemsModels = [
  ItemModel(
    title: 'Payment  Method',
    iconPath: Assets.assetsImagesPayment,
  ),
  ItemModel(
    title: 'My Certificates',
    iconPath: Assets.assetsImagesMyCertificates,
  ),
  ItemModel(
    title: 'Help Center',
    iconPath: Assets.assetsImagesHelp,
  ),
  ItemModel(
    title: 'Invite Friends',
    iconPath: Assets.assetsImagesSend,
  ),
  ItemModel(
    title: 'Logout',
    iconPath: Assets.assetsImagesLogout,
  ),
];
// for course
List<ItemModel> courseItemsModels = [
  ItemModel(
    title: 'Lectures',
    iconPath: Assets.assetsImagesBookColor,
    trailingText: '50+ Lectures',
  ),
  ItemModel(
    title: 'Learning Time',
    iconPath: Assets.assetsImagesTimeColor,
    trailingText: '4 Weeks',
  ),
  ItemModel(
    title: 'Certification',
    iconPath: Assets.assetsImagesCertificateColor,
    trailingText: 'Online Certificate',
  ),
];
