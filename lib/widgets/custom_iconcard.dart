import 'package:flutter/material.dart';
import 'package:rebuy/constants/constants.dart';
import 'package:rebuy/theme/app_theme.dart';

class CustomIconcard extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const CustomIconcard({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
        double screenHeight = Constants.screenHeight(context);
    double screenWidth = Constants.screenWidth(context);
    return  InkWell(onTap: onTap,
    
      child: Container(height: screenHeight * 0.06,
      width: screenWidth  * 0.17,
      decoration: BoxDecoration(
        color: lightTheme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20)
      ),
        
        child: Image.asset(image),
      ),
    );
  }
}