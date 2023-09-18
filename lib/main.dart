import 'package:flutter/material.dart';
import 'package:greate_places/screens/place_form_screen.dart';
import 'package:greate_places/screens/place_list_screen.dart';
import 'package:greate_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);

    return MaterialApp(
      title: 'Greate Places',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.inversePrimary,
        ),
      ),
      home: const PlaceListScreen(),
      routes: {
        AppRoutes.placeForms: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
