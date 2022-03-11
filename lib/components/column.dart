import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, children: children);
  }
}
