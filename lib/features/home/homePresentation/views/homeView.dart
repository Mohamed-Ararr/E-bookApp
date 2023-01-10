// ignore_for_file: file_names

import 'package:bookstore/features/home/homePresentation/views/widgets/homeWidgets/homeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
