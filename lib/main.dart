import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/routers/router.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config()
    );
  }
}
