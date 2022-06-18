import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:genshin_project/data/characterData.dart';
import 'package:genshin_project/page/manage/visioncolor.dart';

class characterInfoPage extends StatefulWidget {
  var index;
  characterInfoPage({Key? key, required var this.index}) : super(key: key);

  @override
  State<characterInfoPage> createState() => _characterInfoPageState();
}

class _characterInfoPageState extends State<characterInfoPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var charData = CharacterData.data[widget.index];
    var charCon = CharacterData.constellation;
    return Scaffold(
        appBar: AppBar(
          title: Text(charData.name),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: TabBar(
                          labelColor: Colors.blue,
                          tabs: [
                            Tab(text: 'Wish Art',),
                            Tab(text: 'Constellation',)
                          ],
                        ),
                      ),

                      Container(
                        height: 400.0,
                        child: TabBarView(
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/characters/full-art-${charData.vision}/${charData.slug}.webp',
                                fit: BoxFit.cover,
                                height: 420.0,
                              ),
                            ),

                            Center(
                              child: Image.asset(
                                'assets/images/characters/${charData.vision}-con/${charData.slug}.webp',
                                fit: BoxFit.cover,
                                height: 350.0,
                                color: Colors.black,
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
                                  child: Center(child: Text('Rarity', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Image.asset('assets/images/raritys/${(charData.rarity == 5)? '5-stars' : '4-stars'}.webp',height: 32.0,)),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Weapon Type', style: TextStyle(fontSize: 18.0),),),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('${charData.weapon.toString().substring(7).toUpperCase()}', style: TextStyle(fontSize: 18.0),)),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Element', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/visions/${charData.vision}.png',height: 30.0,),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Gender', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('${charData.gender.toString().substring(7)}', style: TextStyle(fontSize: 18.0),)),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Birthday', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text(charData.birthday, style: TextStyle(fontSize: 18.0),)),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Astrolabos Name', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('${charCon[charData.slug]}', style: TextStyle(fontSize: 18.0),)),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('In-game Description', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text(charData.description, style: TextStyle(fontSize: 18.0),)),
                                )),
                              ],
                            ),

                            TableRow(
                              children: [
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Obtain', style: TextStyle(fontSize: 18.0),)),
                                )),
                                Card(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('${charData.obtain.toString().substring(7)}', style: TextStyle(fontSize: 18.0),)),
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
          ),
        )
    );
  }
}
