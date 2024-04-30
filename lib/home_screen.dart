import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({required this.title, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen ${widget.title}"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("DetailsScreen"),
              onPressed: () {
                context.go("/details");
              },
            ),
            TextButton(
              child: const Text("InfoScreen"),
              onPressed: () {
                context.go("/info");
              },
            ),
            const Divider(),
            TextButton(
              child: Text(counter.toString()),
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
