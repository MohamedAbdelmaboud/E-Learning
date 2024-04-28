import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 3), () {
    //   context.go(AppRouter.homeView);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashViewBody();
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0xff5A189A).withOpacity(0.5),
            const Color(0xff5A189A),
            const Color(0xFF9B98FF).withOpacity(0.8),
          ])),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 140,
        ),
      ),
    );
  }
}
