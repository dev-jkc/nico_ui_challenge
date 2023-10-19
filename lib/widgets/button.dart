import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final Color btnBgColor;
  final Color btnTextColor;
  final double btnTextSize;
  final double btnPaddingVertical;
  final double btnPaddingHorizontal;

  const Button({
    super.key,
    required this.btnText,
    required this.btnBgColor,
    required this.btnTextColor,
    required this.btnTextSize,
    required this.btnPaddingVertical,
    required this.btnPaddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: btnBgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: btnPaddingHorizontal,
          vertical: btnPaddingVertical,
        ),
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: btnTextSize,
            color: btnTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
