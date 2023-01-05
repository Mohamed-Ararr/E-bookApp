// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bookstore/constants.dart';

import '../../../../home/homePresentation/views/homeView.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    animatedNavigationToHome();
  }

  void animatedNavigationToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.to(
        () => const HomeView(),
        transition: Transition.circularReveal,
        duration: kTransitionDuration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            // font for bookly is neucha
            Image.asset(
              "assets/logoApp.png",
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            const Spacer(flex: 1),
            const CircularProgressIndicator(color: Colors.white30),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
