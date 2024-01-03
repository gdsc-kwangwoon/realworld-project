import 'package:flutter/material.dart';

class AppFont extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLine;

  const AppFont(
    this.text, {
    super.key,
    this.style,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLine,
    );
  }
}
