// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';

class LoadingBoxShimmer extends StatelessWidget {
  const LoadingBoxShimmer({
    Key? key,
    required this.halfWidth,
  }) : super(key: key);

  final bool halfWidth;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 25,
      width: halfWidth ? deviceWidth * 0.3 : deviceWidth,
      child: Shimmer.fromColors(
        baseColor: Colors.white54,
        highlightColor: Colors.white70,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
