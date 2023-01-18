// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import 'loadingBoxShimmer.dart';

class LoadingBookShimmer extends StatelessWidget {
  const LoadingBookShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            SizedBox(
              width: 75,
              height: 130.0,
              child: Shimmer.fromColors(
                baseColor: Colors.white54,
                highlightColor: Colors.white70,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: kBorderRadius,
                    color: Colors.white54,
                  ),
                  height: 100,
                  width: 75,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  LoadingBoxShimmer(halfWidth: false),
                  SizedBox(height: 10),
                  LoadingBoxShimmer(halfWidth: false),
                  SizedBox(height: 10),
                  LoadingBoxShimmer(halfWidth: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
