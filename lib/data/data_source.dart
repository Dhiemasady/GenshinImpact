import 'package:responsi_b/base_network.dart';

class CharacterDataSource {
  static CharacterDataSource instance = CharacterDataSource();
  Future<List<dynamic>> loadCharacters() {

  }
}

class WeaponDataSource {
  static WeaponDataSource instance = WeaponDataSource();
  Future<List<dynamic>> loadWeapons() {

  }
}

class CharacterDetailDataSource {
  static CharacterDetailDataSource instance = CharacterDetailDataSource();
  Future<Map<String, dynamic>> loadCharacters(String character) {

  }
}

class WeaponDetailDataSource {
  static WeaponDetailDataSource instance = WeaponDetailDataSource();
  Future<Map<String, dynamic>> loadWeapon(String weapon) {
  }
}

