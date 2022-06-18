import 'package:flutter/material.dart';
import 'package:genshin_project/data/characterData.dart';
import 'package:genshin_project/page/manage/visioncolor.dart';

import '../characterInfoPage.dart';

Widget viewCharacterByVision({required int index, required var context, required var vision}) {
  var charData = CharacterData.data;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        for (int i = 0; i < index; i++)
          if (charData[i].vision == vision)
            Card(
              color: Colors.black.withOpacity(0.5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => characterInfoPage(index: i)));
                },
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/characters/fivestarBG.jpg', width: 100.0, color: (charData[i].rarity == 5) ? Colors.orange : Colors.purpleAccent,),
                        Image.asset('assets/images/characters/$vision/${charData[i].slug}.webp', width: 100.0,),
                      ],
                    ),
                    SizedBox(width: 8.0,),
                    Column(
                      children: [
                        Text('${charData[i].name}', style: TextStyle(fontSize: 25.0, color: manageVisionColors(vision: vision)),),
                        Image.asset('assets/images/raritys/${(charData[i].rarity == 5)? '5-stars' : '4-stars'}.webp', width: 100.0,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      ],
    ),
  );
}
