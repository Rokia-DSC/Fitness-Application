import 'package:fitness_application/constants/constantsBMI.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application/constants/constantsBMI.dart' as constants;

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        decoration: BoxDecoration(
          color: constants.kBottomContainerColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        // color: constants.kBottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10.0,
          right: 10,
          left: 10,
        ),
        padding: const EdgeInsets.only(bottom: 8.0),
        // width: double.infinity,
        width: MediaQuery.of(context).size.width * 0.7,
        height: constants.kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
