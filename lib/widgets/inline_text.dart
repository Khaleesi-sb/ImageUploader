import 'package:flutter/material.dart';

class InlineText extends StatelessWidget {
  const InlineText({
    required this.text,
    required this.inlineText,
    super.key});

  final String text;
  final String inlineText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 12),
          text: text,
          children: <TextSpan>[
            TextSpan(
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  decoration: TextDecoration.underline,
                  color: Color(0xFFF5862A),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              text: inlineText,
            )
          ]),
    );
  }
}
