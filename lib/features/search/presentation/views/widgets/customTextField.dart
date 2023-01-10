// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search for a book...",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          enabledBorder: buildTextFieldBorder(Colors.grey),
          focusedBorder: buildTextFieldBorder(Colors.white),
        ),
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
