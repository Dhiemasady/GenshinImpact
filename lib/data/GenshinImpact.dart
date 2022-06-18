
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_project/model/character.dart';
import 'package:genshin_project/model/weapon.dart';
import 'package:genshin_project/data/characterData.dart';
import 'package:genshin_project/data/weaponData.dart';
import 'package:genshin_project/page/charactersPage/char.dart';
import 'package:genshin_project/page/charactersPage/charvision.dart';
import 'package:genshin_project/page/weaponsPage/viewAllWeapons.dart';
import 'package:genshin_project/page/weaponsPage/viewWeaponsByType.dart';
import 'package:http/http.dart' as http;

class GenshinImpact extends StatefulWidget {
  const GenshinImpact({Key? key}) : super(key: key);

  @override
  State<GenshinImpact> createState() => _GenshinImpactState();
}

class _GenshinImpactState extends State<GenshinImpact> with TickerProviderStateMixin {

  var _isLoading = false;
  late TabController _mainTabController;
  late TabController _tabControllerCharacters;
  late TabController _tabControllerWeapons;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabControllerCharacters = TabController(length: 7, vsync: this);
    _tabControllerWeapons = TabController(length: 6, vsync: this);
    _mainTabController = TabController(length: 2, vsync: this);
    _loadAPI();
  }

  _loadAPI() async {
    setState(() {
      _isLoading = true;
    });

    final Uri urlCharacters = Uri.parse('https://api.genshin.dev/characters');
    var respondCharacters = await http.get(urlCharacters);
    final Uri urlWeapons = Uri.parse('https://api.genshin.dev/weapons');
    var respondWeapons = await http.get(urlWeapons);

    setState(() {
      _isLoading = false;
    });
    //var json = jsonDecode(respondCharacters.body);
    var charData = apiResultFromJson(respondCharacters.body);
    var weaData = weaponApiResultFromJson(respondWeapons.body);

    setState(() {
      CharacterData.data = charData;
      WeaponData.data = weaData;
    });

    print('successful');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genshin Impact'),
        ),
      body: Stack(
        children: [
          if (_isLoading)
            const Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(),
              ),
            )
          else
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background/genshin-impact-bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
                child: _mainTabBar()
            ),
        ],
      ),
    );
  }

  Widget _mainTabBar() {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            labelColor: Colors.blue,
            controller: _mainTabController,
            tabs: [
              Tab(text: 'Characters',),
              Tab(text: 'Weapons',),
            ],
          ),
        ),

        Flexible(
          child: Container(
            child: TabBarView(
              controller: _mainTabController,
              children: [
                _subTabBarCharacters(),
                _subTabBarWeapons(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _subTabBarCharacters() {
   var charDataLength = CharacterData.data.length;
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            controller: _tabControllerCharacters,
            labelColor: Colors.blue,
            tabs: [
              Tab(text: 'All',),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/pyro.png', width: 30.0,),
                  Tab(text: 'Pyro',),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/cryo.png', width: 30.0,),
                  Tab(text: 'Cryo',),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/hydro.png', width: 30.0,),
                  Tab(text:'Hydro',),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/anemo.png', width: 30.0,),
                  Tab(text: 'Amemo',),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/electro.png', width: 30.0,),
                  Tab(text: 'Electro',),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/visions/geo.png', width: 30.0,),
                  Tab(text: 'Geo',),
                ],
              ),
            ],
          ),
        ),

        Flexible(
          child: Container(
            child: TabBarView(
              controller: _tabControllerCharacters,
              children: [
                viewAllCharacter(index: charDataLength),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'pyro'),),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'cryo'),),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'hydro'),),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'anemo'),),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'electro'),),
                SingleChildScrollView(child: viewCharacterByVision(index: charDataLength, context: context, vision: 'geo'),),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _subTabBarWeapons() {
    var weaDataLength = WeaponData.data.length;
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            controller: _tabControllerWeapons,
            labelColor: Colors.blue,
            tabs: [
              Tab(text: 'All',),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/weapons/sword.webp', width: 30.0,),
                  Tab(text: 'Sword',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/weapons/bow.webp', width: 30.0,),
                  Tab(text: 'Bow',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/weapons/claymore.webp', width: 30.0,),
                  Tab(text: 'Claymore',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/weapons/polearm.webp', width: 30.0,),
                  Tab(text: 'Polearm',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/weapons/catalyst.webp', width: 30.0,),
                  Tab(text: 'Catalyst',),
                ],
              ),
            ],
          ),
        ),

        Flexible(
          child: Container(
            child: TabBarView(
              controller: _tabControllerWeapons,
              children: [
                viewAllWeapon(index: weaDataLength),
                SingleChildScrollView(child: viewWeaponsByType(index: weaDataLength, context: context, type: 'sword'),),
                SingleChildScrollView(child: viewWeaponsByType(index: weaDataLength, context: context, type: 'bow'),),
                SingleChildScrollView(child: viewWeaponsByType(index: weaDataLength, context: context, type: 'claymore'),),
                SingleChildScrollView(child: viewWeaponsByType(index: weaDataLength, context: context, type: 'polearm'),),
                SingleChildScrollView(child: viewWeaponsByType(index: weaDataLength, context: context, type: 'catalyst'),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


