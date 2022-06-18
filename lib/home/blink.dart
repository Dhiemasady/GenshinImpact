import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlinkingText extends StatefulWidget {
  final String _target;
  BlinkingText(this._target);
  @override
  BlinkingTextState createState() => BlinkingTextState();
}

class BlinkingTextState extends State<BlinkingText> {
  bool _show = true;
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(milliseconds: 700), (_) {
      setState(() => _show = !_show);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Text(widget._target,
      style: _show
          ? GoogleFonts.prata(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)
          : TextStyle(color: Colors.transparent));

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

//GoogleFonts.abrilFatface(fontSize: 50.0, color: Colors.white)