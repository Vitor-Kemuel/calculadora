import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final Widget text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color ?? const Color.fromARGB(255, 44, 44, 44),
      onPressed: () {},
      child: text,
    );
  }
}
