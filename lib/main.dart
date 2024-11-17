import 'package:flutter/material.dart';
import 'package:flutter_finance/features/splash/page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: Colors.white, // Cor da bolinha (handle)
          selectionColor:
              Colors.blue.withOpacity(0.4), // Cor do texto selecionado
          cursorColor: Colors.white,
        ),
      ),
    );
  }
}
