// ignore_for_file: file_names

import 'package:bookstore/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

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
