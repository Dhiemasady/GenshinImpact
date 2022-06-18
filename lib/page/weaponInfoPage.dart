import 'package:flutter/material.dart';
import 'package:genshin_project/data/weaponData.dart';
import 'package:genshin_project/page/manage/starrarity.dart';

class weaponInfoPage extends StatefulWidget {

  var index;
  weaponInfoPage({Key? key, required this.index}) : super(key: key);
  @override
  State<weaponInfoPage> createState() => _weaponInfoPageState();
}

class _weaponInfoPageState extends State<weaponInfoPage> {
  @override
  Widget build(BuildContext context) {
    var weaData = WeaponData.data[widget.index];
    var weaType = weaData.type.toString().substring(5).toLowerCase();
    var weaInfo = WeaponData.otherInfo;
    return Scaffold(
        appBar: AppBar(
          title: Text(weaData.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      color:  Colors.white,
                      child: TabBar(
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(text: 'Base',),
                          Tab(text: '2nd Ascension',)
                        ],
                      ),
                    ),

                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/weapons/$weaType/${weaData.slug}.webp',
                              fit: BoxFit.cover,
                              height: 420.0,
                            ),
                          ),

                          Center(
                            child: Image.asset(
                              'assets/images/weapons/2nd-$weaType/${weaData.slug}.webp',
                              fit: BoxFit.cover,
                              height: 300.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Table(
                        columnWidths: {1: FractionColumnWidth(.7)},
                        children: [
                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Type', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('$weaType', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Rarity', style: TextStyle(fontSize: 18.0),)),
                              )),
                              Card(child: Image.asset('assets/images/raritys/${manageRarityStars(rarity: weaData.rarity)}.webp',height: 32.0,)),
                              //Text('assets/images/raritys/${manageRarityStars(rarity: weaData.rarity)}.webp')
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Base ATK', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaData.atk}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Secondary Stat', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaInfo[weaData.slug]!['secondary stat']}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Secondary Stat Value', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaInfo[weaData.slug]!['secondary stat value']}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Special Ability', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaInfo[weaData.slug]!['Special Ability']}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Special Ability Description', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaInfo[weaData.slug]!['Special Ability Description']}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('In-game Description', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaInfo[weaData.slug]!['description']}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                          TableRow(
                            children: [
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Obtain', style: TextStyle(fontSize: 18.0),),),
                              )),
                              Card(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('${weaData.obtain.toString().substring(7)}', style: TextStyle(fontSize: 18.0),)),
                              )),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
