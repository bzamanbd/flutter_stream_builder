import 'package:flutter/material.dart';

import '../screens/stream_screen.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String _title= 'Stream Builder';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: StreamScreen(title: _title,),
    );
  }
}