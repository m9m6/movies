import 'package:flutter/material.dart';
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
      // initialRoute: AppRoutes.RouteName,
      routes: {
        // AppRoutes.RouteName:(context)=>the Screen here(),
      },
      theme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}