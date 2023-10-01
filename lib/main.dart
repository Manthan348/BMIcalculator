import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
  runApp(const BMIcalc());
}

class BMIcalc extends StatelessWidget {
  const BMIcalc({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF0a0d22),
          ),
          scaffoldBackgroundColor: Color(0xFF0a0d22)),
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0a0d22),
      //   colorScheme:
      //       ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      // ),
    );
  }
}

