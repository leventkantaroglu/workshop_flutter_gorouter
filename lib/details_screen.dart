import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailsScreen"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("DetailsScreen"),
          onPressed: () {},
        ),
      ),
    );
  }
}
