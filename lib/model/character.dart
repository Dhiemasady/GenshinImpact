// To parse this JSON data, do
//
//     final apiResult = apiResultFromJson(jsonString);
import 'dart:convert';

List<CharacterApiResult> apiResultFromJson(String str) => List<CharacterApiResult>.from(json.decode(str).map((x) => CharacterApiResult.fromJson(x)));

String apiResultToJson(List<CharacterApiResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CharacterApiResult {
  CharacterApiResult({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.gender,
    required this.birthday,
    required this.rarity,
    required this.vision,
    required this.weapon,
    required this.obtain,
  });

  int id;
  String name;
  String slug;
  String description;
  Gender? gender;
  String birthday;
  int rarity;
  String vision;
  Weapon? weapon;
  Obtain? obtain;

  factory CharacterApiResult.fromJson(Map<String, dynamic> json) => CharacterApiResult(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
    description: json["description"] == null ? null : json["description"],
    gender: json["gender"] == null ? null : genderValues.map[json["gender"]],
    birthday: json["birthday"] == null ? null : json["birthday"],
    rarity: json["rarity"] == null ? null : json["rarity"],
    vision: json["vision"] == null ? null : json["vision"],
    weapon: json["weapon"] == null ? null : weaponValues.map[json["weapon"]],
    obtain: json["obtain"] == null ? null : obtainValues.map[json["obtain"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
    "description": description == null ? null : description,
    "gender": gender == null ? null : genderValues.reverse[gender],
    "birthday": birthday == null ? null : birthday,
    "rarity": rarity == null ? null : rarity,
    "vision": vision == null ? null : vision,
    "weapon": weapon == null ? null : weaponValues.reverse[weapon],
    "obtain": obtain == null ? null : obtainValues.reverse[obtain],
  };
}

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({
  "female": Gender.FEMALE,
  "male": Gender.MALE
});

enum Obtain { WISH, UNKNOWN, QUEST }

final obtainValues = EnumValues({
  "Quest": Obtain.QUEST,
  "Unknown": Obtain.UNKNOWN,
  "Wish": Obtain.WISH
});

enum Weapon { CLAYMORE, SWORD, CATALYST, BOW, POLEARM }

final weaponValues = EnumValues({
  "bow": Weapon.BOW,
  "catalyst": Weapon.CATALYST,
  "claymore": Weapon.CLAYMORE,
  "polearm": Weapon.POLEARM,
  "sword": Weapon.SWORD
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
