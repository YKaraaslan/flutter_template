import 'package:json_annotation/json_annotation.dart';

part 'sample_model.g.dart';

@JsonSerializable()
class SampleCatModel {
  @JsonKey(name: 'breeds')
  List<Breed>? breeds;

  @JsonKey(name: 'categories')
  List<Category>? categories;

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'url')
  String? url;

  @JsonKey(name: 'width')
  int? width;

  @JsonKey(name: 'height')
  int? height;

  SampleCatModel({
    required this.breeds,
    required this.categories,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory SampleCatModel.fromJson(Map<String, dynamic> json) => _$SampleCatModelFromJson(json);
  Map<String, dynamic> toJson() => _$SampleCatModelToJson(this);
}

@JsonSerializable()
class Breed {
  @JsonKey(name: 'weight')
  Weight? weight;

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'cfaUrl')
  String? cfaUrl;

  @JsonKey(name: 'vcahospitalsUrl')
  String? vcahospitalsUrl;

  @JsonKey(name: 'temperament')
  String? temperament;

  @JsonKey(name: 'origin')
  String? origin;

  @JsonKey(name: 'countryCodes')
  String? countryCodes;

  @JsonKey(name: 'countryCode')
  String? countryCode;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'lifeSpan')
  String? lifeSpan;

  @JsonKey(name: 'indoor')
  int? indoor;

  @JsonKey(name: 'lap')
  int? lap;

  @JsonKey(name: 'altNames')
  String? altNames;

  @JsonKey(name: 'adaptability')
  int? adaptability;

  @JsonKey(name: 'affectionLevel')
  int? affectionLevel;

  @JsonKey(name: 'childFriendly')
  int? childFriendly;

  @JsonKey(name: 'catFriendly')
  int? catFriendly;

  @JsonKey(name: 'dogFriendly')
  int? dogFriendly;

  @JsonKey(name: 'energyLevel')
  int? energyLevel;

  @JsonKey(name: 'grooming')
  int? grooming;

  @JsonKey(name: 'healthIssues')
  int? healthIssues;

  @JsonKey(name: 'intelligence')
  int? intelligence;

  @JsonKey(name: 'sheddingLevel')
  int? sheddingLevel;

  @JsonKey(name: 'socialNeeds')
  int? socialNeeds;

  @JsonKey(name: 'strangerFriendly')
  int? strangerFriendly;

  @JsonKey(name: 'vocalisation')
  int? vocalisation;

  @JsonKey(name: 'bidability')
  int? bidability;

  @JsonKey(name: 'experimental')
  int? experimental;

  @JsonKey(name: 'hairless')
  int? hairless;

  @JsonKey(name: 'natural')
  int? natural;

  @JsonKey(name: 'rare')
  int? rare;

  @JsonKey(name: 'rex')
  int? rex;

  @JsonKey(name: 'suppressedTail')
  int? suppressedTail;

  @JsonKey(name: 'shortLegs')
  int? shortLegs;

  @JsonKey(name: 'wikipediaUrl')
  String? wikipediaUrl;

  @JsonKey(name: 'hypoallergenic')
  int? hypoallergenic;

  @JsonKey(name: 'referenceImageId')
  String? referenceImageId;

  @JsonKey(name: 'vetstreetUrl')
  String? vetstreetUrl;

  Breed({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.catFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.bidability,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.vetstreetUrl,
  });

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
  Map<String, dynamic> toJson() => _$BreedToJson(this);
}

@JsonSerializable()
class Weight {
  @JsonKey(name: 'imperial')
  String? imperial;

  @JsonKey(name: 'metric')
  String? metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  Map<String, dynamic> toJson() => _$WeightToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
