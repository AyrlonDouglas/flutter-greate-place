import 'package:flutter/material.dart';
import 'package:greate_places/widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({super.key});

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleControler = TextEditingController();

  void _submitForm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Novo Lugar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _titleControler,
                        decoration: const InputDecoration(
                          labelText: "Título",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ImageInput()
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: _submitForm,
              icon: const Icon(Icons.add),
              label: const Text("Adicionar"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  minimumSize: const Size(0, 48),
                  shape: const RoundedRectangleBorder(side: BorderSide.none)),
            )
          ],
        ));
  }
}
