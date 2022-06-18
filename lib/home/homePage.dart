import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_project/data/GenshinImpact.dart';
import 'package:genshin_project/home/blink.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => GenshinImpact()));
      },
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background/genshin-impact-07.jpg',),
                fit: BoxFit.cover,
              )
            ),

          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: BlinkingText('Klik Disini'),
                ),
                //Text('Tap to Enter', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white,), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }
}
