import 'package:flutter/material.dart';
import 'package:flutter_app/views/homepage.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 23, 23, 23)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
