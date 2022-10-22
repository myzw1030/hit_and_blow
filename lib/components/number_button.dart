import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  final Function() press;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: ElevatedButton(
        onPressed: press,
        child: text,
      ),
    );
  }
}
