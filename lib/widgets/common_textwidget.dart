import 'package:flutter/material.dart';

class CommonTextWidget extends StatelessWidget {
  const CommonTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  final String text;
  final int fontSize;
  final FontWeight fontWeight;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
