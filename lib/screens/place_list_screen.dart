import 'package:flutter/material.dart';
import 'package:greate_places/utils/app_routes.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Lugaress"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.placeForms);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
