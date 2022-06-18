import 'package:flutter/material.dart';
import 'package:genshin_project/data/weaponData.dart';
import 'package:genshin_project/page/weaponInfoPage.dart';
import 'package:genshin_project/page/manage/colorrarity.dart';
import 'package:genshin_project/page/manage/starrarity.dart';

Widget viewAllWeapon({required int index}) {
  var weaData = WeaponData.data;
  return ListView.builder(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
      itemCount: index,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black.withOpacity(0.5),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => weaponInfoPage(index: index)));
              //print('assets/images/weapons/${weaData[index].type.toString().substring(5)}/${weaData[index].slug}.webp');
            },
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/characters/fivestarBG.jpg', width: 100.0, color: weaponsCheskRarity(rarity: weaData[index].rarity),),
                    Image.asset('assets/images/weapons/${weaData[index].type.toString().substring(5).toLowerCase()}/${weaData[index].slug}.webp', height: 100.0,)
                  ],
                ),
                SizedBox(width: 8.0,),
                Text('${weaData[index].name}', style: TextStyle(fontSize: 20.0, color: Colors.white),),
              ],
            ),
          ),
        );
      }
  );
}