import 'package:flutter/material.dart';

class RedElevatedButtonLarge extends StatelessWidget {
  final String text;
  final Function onTap;
  final double? horiz;
  const RedElevatedButtonLarge({
    super.key,
    required this.text,
    required this.onTap,
    this.horiz
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horiz ?? 30,
      ),
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF1616),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size.fromHeight(60),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
