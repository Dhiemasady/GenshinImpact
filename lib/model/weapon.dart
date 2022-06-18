// To parse this JSON data, do
//
//     final weaponApiResult = weaponApiResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<WeaponApiResult> weaponApiResultFromJson(String str) => List<WeaponApiResult>.from(json.decode(str).map((x) => WeaponApiResult.fromJson(x)));

String weaponApiResultToJson(List<WeaponApiResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WeaponApiResult {
  WeaponApiResult({
    required this.id,
    required this.name,
    required this.slug,
    required this.rarity,
    required this.atk,
    required this.obtain,
    required this.type,
  });

  int id;
  String name;
  String slug;
  String rarity;
  int atk;
  Obtain? obtain;
  Type? type;

  factory WeaponApiResult.fromJson(Map<String, dynamic> json) => WeaponApiResult(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    rarity: json["rarity"],
    atk: json["atk"],
    obtain: obtainValues.map[json["obtain"]],
    type: typeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "rarity": rarity,
    "atk": atk,
    "obtain": obtainValues.reverse[obtain],
    "type": typeValues.reverse[type],
  };
}

enum Obtain { GACHA, STARGLITTER_EXCHANGE, CRAFTING, BP_BOUNTY, CHEST }

final obtainValues = EnumValues({
  "bp bounty": Obtain.BP_BOUNTY,
  "chest": Obtain.CHEST,
  "crafting": Obtain.CRAFTING,
  "gacha": Obtain.GACHA,
  "starglitter exchange": Obtain.STARGLITTER_EXCHANGE
});

enum Type { CLAYMORE, SWORD, CATALYST, BOW, POLEARM }

final typeValues = EnumValues({
  "bow": Type.BOW,
  "catalyst": Type.CATALYST,
  "claymore": Type.CLAYMORE,
  "polearm": Type.POLEARM,
  "sword": Type.SWORD
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
