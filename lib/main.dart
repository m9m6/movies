import 'package:flutter/material.dart';
import 'package:movies/ui/update_profile/cubit/profile_cubit.dart';
import 'package:movies/ui/update_profile/profile_screen.dart';
import 'package:movies/utils/app_routes.dart';
import 'package:movies/utils/app_themes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.ProfileScreen,
      routes: {
         AppRoutes.ProfileScreen:(context)=> ProfileScreen(),

      },
      theme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}