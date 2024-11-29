import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rebuy/firebase_options.dart';
import 'package:rebuy/routes/app_routes.dart';
import 'package:rebuy/theme/app_theme.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: AppRoutes.routes,
      theme: lightTheme,
      themeMode: ThemeMode.light,

    );
  }
}