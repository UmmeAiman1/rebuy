import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/theme/app_theme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: lightTheme.colorScheme.onSecondary,
            child:  Icon(Icons.person, color: lightTheme.colorScheme.surface,),
          ),
        ),
        
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text:  TextSpan(
              text: 'Hey Alice',
              style: Theme.of(context).textTheme.displayLarge,
              children: [
                TextSpan(
                  text: '\nWelcome Back',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Theme.of(context).colorScheme.primary
                  )
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/sidebar');
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
