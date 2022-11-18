import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Halo Dunia!'),
      ),
      body: const Center(
        child: Text(
          'Apa Kabar Dunia',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Refresh',
        // ignore: sort_child_properties_last
        child: const Icon(Icons.refresh),
        onPressed: () => {
          // ignore: avoid_print
          print('Refresh'),
        },
      ),
    ),
  ));
}
