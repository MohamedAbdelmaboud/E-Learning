import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtomNav extends StatelessWidget {
  const CustomButtomNav({
    super.key,
    required int currentIndex,
    required this.onItemSelected,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;
  final void Function(int) onItemSelected;

  static final List<BottomNavyBarItem> items = <BottomNavyBarItem>[
    BottomNavyBarItem(
        textAlign: TextAlign.center,
        title: const Text('Home'),
        icon: const Icon(Icons.home),
        activeColor: Colors.white),
    BottomNavyBarItem(
        textAlign: TextAlign.center,
        title: const Text('Courses'),
        icon: const Icon(Icons.book),
        activeColor: Colors.white),
    BottomNavyBarItem(
        textAlign: TextAlign.center,
        title: const Text('Chat'),
        icon: const Icon(Icons.chat_bubble),
        activeColor: Colors.white),
    BottomNavyBarItem(
        textAlign: TextAlign.center,
        title: const Text('Profile'),
        icon: const Icon(Icons.person),
        activeColor: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: AppColors.primaryColor,
      animationDuration: const Duration(milliseconds: 250),
      selectedIndex: _currentIndex,
      onItemSelected: onItemSelected,
      iconSize: 30,
      items: items, // Use the static items list
    );
  }
}
