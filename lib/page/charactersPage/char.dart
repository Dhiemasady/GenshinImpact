
import 'package:flutter/material.dart';
import 'package:genshin_project/data/characterData.dart';
import 'package:genshin_project/page/characterInfoPage.dart';
import 'package:genshin_project/page/manage/visioncolor.dart';

Widget viewAllCharacter({required int index}) {
  var charData = CharacterData.data;
  charData.sort((a, b) => b.rarity.compareTo(a.rarity));
  return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      itemCount: index,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black.withOpacity(0.5),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => characterInfoPage(index: index)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/images/characters/fivestarBG.jpg', width: 100.0, color: (charData[index].rarity == 5)? Colors.orange : Colors.purpleAccent,),
                          Image.asset('assets/images/characters/${charData[index].vision}/${charData[index].slug}.webp', width: 100.0,),
                        ],
                      ),
                      SizedBox(width: 8.0,),
                      Column(
                        children: [
                          Text('${charData[index].name}', style: TextStyle(fontSize: 25.0, color: manageVisionColors(vision: charData[index].vision)),),
                          Image.asset('assets/images/raritys/${(charData[index].rarity == 5)? '5-stars' : '4-stars'}.webp', width: 100.0,),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset('assets/images/visions/${charData[index].vision}.png', width: 75.0,),
                ),
              ],
            ),
          ),
        );
      }
  );
}