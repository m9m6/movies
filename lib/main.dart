import 'package:flutter/material.dart';
import 'package:movies/ui/auth/login/login_screen.dart';
import 'package:movies/ui/home_screens/home_screen.dart';
import 'package:movies/ui/update_profile/cubit/profile_cubit.dart';
import 'package:movies/ui/update_profile/profile_screen.dart';
import 'package:movies/ui/onboarding/onboarding_start.dart';
import 'package:movies/ui/onboarding/pre_onboarding.dart';
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
      initialRoute: AppRoutes.preBoarding,
      routes: {
        AppRoutes.preBoarding:(context)=>PreOnboardingScreen(),
        AppRoutes.onBoarding:(context)=>OnboardingStart(),
        AppRoutes.ProfileScreen:(context)=> ProfileScreen(),
        AppRoutes.loginScreen:(context)=>LoginScreen(),
        AppRoutes.homeScreen:(context)=>HomeScreen(),
      },
      theme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}