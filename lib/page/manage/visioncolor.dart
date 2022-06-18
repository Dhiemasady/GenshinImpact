import 'package:flutter/material.dart';

Color manageVisionColors({required var vision}) {
  if(vision == 'pyro'){
    return Colors.red;
  }
  else if(vision == 'cryo') {
    return Colors.cyanAccent;
  }
  else if(vision == 'hydro') {
    return Colors.indigo;
  }
  else if(vision == 'anemo') {
    return Colors.greenAccent;
  }
  else if(vision == 'electro') {
    return Colors.purple;
  }
  else{
    return Colors.orangeAccent;
  }
}