import 'package:flutter/material.dart';
import 'package:genshin_project/home/homePage.dart';
import 'package:genshin_project/model/scrollcustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      title: 'Genshin Impact',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
    );
  }
}

//youtubePlayer(url: 'https://youtu.be/LqCwQicfMuc?list=TLGGH88GQr71G38wODA0MjAyMg')