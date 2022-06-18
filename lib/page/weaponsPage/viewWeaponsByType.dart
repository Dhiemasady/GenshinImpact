import 'package:flutter/material.dart';
import 'package:genshin_project/data/weaponData.dart';
import 'package:genshin_project/page/manage/colorrarity.dart';

import '../weaponInfoPage.dart';
import '../manage/starrarity.dart';

Widget viewWeaponsByType({required int index, required var context, required var type}) {
  var weaData = WeaponData.data;
  weaData.sort((a, b) => b.rarity.compareTo(a.rarity));
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        for(int i = 0; i < index; i++)
          if(weaData[i].type.toString().substring(5) == type.toString().toUpperCase())
            Card(
              color: Colors.black.withOpacity(0.5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => weaponInfoPage(index: i)));
                },
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/characters/fivestarBG.jpg', width: 100.0, color: weaponsCheskRarity(rarity: weaData[i].rarity),),
                        Image.asset('assets/images/weapons/$type/${weaData[i].slug}.webp', width: 100.0,),
                      ],
                    ),

                    SizedBox(width: 8.0,),
                    Text('${weaData[i].name}', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ],
                ),
              ),
            ),
      ],
    ),
  );
}