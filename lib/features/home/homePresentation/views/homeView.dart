// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'widgets/homeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
