import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {
        required this.isPrimary,
        required this.handleOnPress,
      required this.buttonText,
        this.horizontalPadding,
        this.verticalPadding,
        this.fontSize,
        this.fontWeight,
      super.key});

  final Function() handleOnPress;
  final String buttonText;
  final double? horizontalPadding, verticalPadding;
  final bool isPrimary;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: handleOnPress,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 7, horizontal: horizontalPadding ?? 34),
            backgroundColor: isPrimary ? const Color(0xFFF5862A) : const Color(0xFFD3D3D6),
          elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
        ),
        child: Text(
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: isPrimary ? Colors.white : Colors.black),
          buttonText,
        )
    );
  }
}
