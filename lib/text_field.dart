import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.all(16),
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(),
      borderRadius: BorderRadius.circular(12),
      // color: kTextColor.withOpacity(0.5)
            ),
            child:  TextField(
      // cursorColor: kBackColor,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          // suffixIcon: const Icon(Icons.search)
          ),
            ),
          ),
    );
  }
}
