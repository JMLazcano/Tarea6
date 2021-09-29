// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/colores_rgb.dart';
import 'package:special_counter/counters.dart';
import 'package:special_counter/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Counters>(create: (context) => Counters()),
          ChangeNotifierProvider<Colores_rgb>(create: (context)=> Colores_rgb()),
        ],
        child: HomePage(),
      ),
    );
  }
}