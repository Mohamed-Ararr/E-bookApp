import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class PositionPlayButton extends StatelessWidget {
  const PositionPlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 2,
      right: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kPrimaryColor.withAlpha(100),
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: () {},
          child: const Icon(Icons.play_arrow_rounded),
        ),
      ),
    );
  }
}
