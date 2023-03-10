// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'widgets/splashViewBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
