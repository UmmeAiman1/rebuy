import 'package:flutter/material.dart';
import 'package:rebuy/theme/app_theme.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final bool isObscure;
  final bool isPassword;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.isPassword = false,
    this.isObscure = false,
    this.suffixIcon,
    this.onSuffixIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: lightTheme.colorScheme.onSecondary
          )
        ),
        fillColor: lightTheme.colorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(color:lightTheme.colorScheme.primaryContainer )
        ),
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: onSuffixIconTap,
                child:
                    Icon(isObscure ? Icons.visibility : Icons.visibility_off),
              )
            : null,
      ),
    );
  }
}
