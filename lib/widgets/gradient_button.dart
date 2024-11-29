import 'package:flutter/material.dart';
import 'package:rebuy/constants/constants.dart';
import 'package:rebuy/theme/app_theme.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GradientButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Constants.screenHeight(context);
    double screenWidth = Constants.screenWidth(context);
    return SizedBox(
      height: screenHeight * 0.06,
      width: screenWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        onPressed: onPressed,
        child: Ink(
       height: screenHeight * 0.06,
      width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                lightTheme.colorScheme.secondary,
                lightTheme.colorScheme.secondaryContainer,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}
