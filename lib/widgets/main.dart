import 'package:first_namer_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../states/my_app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
