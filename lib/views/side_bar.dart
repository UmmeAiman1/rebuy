import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/constants/constants.dart';
import 'package:rebuy/controllers/auth_controller.dart';
import 'package:rebuy/theme/app_theme.dart';
import 'package:rebuy/widgets/side_bar_tile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    double screenHeight = Constants.screenHeight(context);
    double screenWidth = Constants.screenWidth(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.1,
            left: screenWidth * 0.04,
            right: screenWidth * 0.04),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ReBuy',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                IconButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            SideBarTile(
                onTap: () {},
                icon: Icons.person_outline,
                title: 'My Account',
                subtitle: 'Edit you details, account settings'),
            SideBarTile(
                onTap: () {},
                icon: Icons.shopping_bag_outlined,
                title: 'My Orders',
                subtitle: 'View all your orders'),
            SideBarTile(
                onTap: () {},
                icon: Icons.menu,
                title: 'My Listings',
                subtitle: 'View your product listing for sale'),
            SideBarTile(
                onTap: () {},
                icon: Icons.favorite_outline,
                title: 'Liked Items',
                subtitle: 'See the products you have wishlisted'),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'feedback',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.06,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: lightTheme.colorScheme.onSecondary),
                  onPressed: () {
                    authController.logout();
                  },
                  child: Text('SignOut',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
              ],
            ),
       
           
          ],
        ),
      ),
    );
  }
}
