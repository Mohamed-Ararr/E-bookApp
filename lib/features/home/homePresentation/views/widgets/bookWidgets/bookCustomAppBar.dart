import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';

class BookCustomAppBar extends StatelessWidget {
  const BookCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingLeftRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            splashRadius: 20,
            icon: const Icon(FontAwesomeIcons.xmark, size: 28),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(FontAwesomeIcons.cartShopping),
          ),
        ],
      ),
    );
  }
}
