
import 'package:flutter/material.dart';

Color weaponsCheskRarity({required String rarity}) {
  if(rarity == '5') {
    return Colors.orange;
  }
  else if(rarity == '4') {
    return Colors.purple;
  }
  else if(rarity == '3') {
    return Colors.blue;
  }
  else if(rarity == '2'){
    return Colors.green;
  }
  else {
    return Colors.grey;
  }
}