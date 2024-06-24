import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: const BoxConstraints.tightFor(width: 46, height: 46),
      onPressed: () {
        onPressed();
      },
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
