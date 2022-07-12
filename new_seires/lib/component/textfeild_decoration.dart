import 'package:flutter/material.dart';

import 'my_theme.dart';

class Textfeilddecoration extends StatelessWidget {
  final Widget child;
  const Textfeilddecoration({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: MyTheme.loginpageclr, borderRadius: BorderRadius.circular(20)),
      width: size.width * 0.8,
      child: child,
    );
  }
}
