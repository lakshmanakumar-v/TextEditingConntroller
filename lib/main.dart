import 'package:flutter/material.dart';
import 'package:texteditingcontroller/texteditingcontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: TextEditing(),
    );
  }
}

