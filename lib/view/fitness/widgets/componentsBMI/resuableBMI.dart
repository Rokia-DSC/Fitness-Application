import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, required this.onPress, required this.pading});
  final Color? colour;
  final Widget? cardChild;
  final Function onPress;
  final double pading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        margin: const EdgeInsets.all(15.0),
        padding:  EdgeInsets.all(pading),
        child: cardChild,
      ),
    );
  }
}
