import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    required this.color,
    this.textStyle,
    this.borderColor,
    this.width,
    this.height,
    this.margin,
  });

  final String text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final Color? borderColor;
  final VoidCallback? onTap;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    // Get the media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Calculate the button width and height as a percentage of the screen size
    final buttonWidth = screenWidth * 0.4; // Width as 80% of the screen width
    final buttonHeight =
        screenHeight * 0.06; // Height as 6% of the screen height

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        width: width ?? buttonWidth,
        // Use calculated width
        height: height ?? buttonHeight,
        // Use calculated height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
