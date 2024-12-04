import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Text("hello world")
          ],
        ),
      ),
    );
  }
}
