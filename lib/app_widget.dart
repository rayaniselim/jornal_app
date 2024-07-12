import 'package:flutter/material.dart';

import 'view/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
