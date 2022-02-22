import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reverb_calculator_2/pages/display_page.dart';
import 'package:reverb_calculator_2/models/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        title: 'Reverb Calculator 2',
        theme: ThemeData.dark(),
        home: DisplayPage(),
      ),
    );
  }
}
