import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/constants/constants.dart';
import 'package:rebuy/theme/app_theme.dart';
import 'package:rebuy/widgets/custom_iconcard.dart';
import 'package:rebuy/widgets/custom_textfield.dart';
import 'package:rebuy/widgets/gradient_button.dart';
import '../controllers/auth_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    double screenHeight = Constants.screenHeight(context);
    double screenWidth = Constants.screenWidth(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ReBuy',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              'Sign Up',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
              'Login with one of the following options',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconcard(image: 'assets/icons/Google.png', onTap: () {
                  authController.loginWithGoogle();
                }),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                CustomIconcard(image: 'assets/icons/Twitter.png', onTap: () {}),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                CustomIconcard(image: 'assets/icons/Apple.png', onTap: () {}),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                Text(
                  ' Or ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextfield(
              controller: authController.usernameController,
              labelText: 'UserName',
              hintText: 'UserName',
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextfield(
              controller: authController.emailController,
              labelText: 'Email',
              hintText: 'Email',
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Obx(
              () => CustomTextfield(
                controller: authController.passwordController,
                hintText: 'Password',
                labelText: 'Password',
                isPassword: true,
                isObscure: authController.isObscure.value,
                onSuffixIconTap: () {
                  authController.passwordVisibility();
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            GradientButton(
                text: 'Sign Up', onPressed: authController.signUpWithEmail),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an Account',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: lightTheme.colorScheme.primary,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
