import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_finance/constants/app_color.dart';
import 'package:flutter_finance/constants/app_image.dart';
import 'package:flutter_finance/features/welcome/page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Duration zoomInDuration = const Duration(seconds: 5);
  Duration bounceDelay = const Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColor.gradientBlue,
        ),
        child: ZoomIn(
          duration: zoomInDuration,
          child: Spin(
            child: Bounce(
              delay: bounceDelay,
              child: Center(
                child: Image.asset(
                  AppImage.logo,
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
