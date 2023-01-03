import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/views/splashView.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color(0xff100B20),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
