import 'package:flutter/material.dart';

import '../widgets/custom_buttom_nav.dart';
import '../widgets/custom_page_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        bottomNavigationBar: CustomButtomNav(
          currentIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
        ),
        body: SizedBox.expand(
          child: CustomPageView(
            pageController: _pageController,
            onPageChanged: (p0) {
              setState(() {
                _currentIndex = p0;
              });
            },
          ),
        ),
      ),
    );
  }
}
