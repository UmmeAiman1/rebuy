import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rebuy/views/home_screen.dart';
import 'package:rebuy/views/login_screen.dart';
import 'package:rebuy/views/side_bar.dart';
import 'package:rebuy/views/signup_screen.dart';
import 'package:rebuy/views/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/splash', page: () => const SplashScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/signup', page: () => const SignupScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
   GetPage(name: '/sidebar', page: () => const SideBar()),
  ];
}