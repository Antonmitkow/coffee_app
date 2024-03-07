import 'dart:convert';

class CardModel {
  final String photo;
  final String name;
  final double cost;

  CardModel({
    required this.photo,
    required this.name,
    required this.cost,
  });

  CardModel copyWith({
    String? photo,
    String? name,
    double? cost,
  }) {
    return CardModel(
      photo: photo ?? this.photo,
      name: name ?? this.name,
      cost: cost ?? this.cost,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'photo': photo});
    result.addAll({'name': name});
    result.addAll({'cost': cost});

    return result;
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      photo: map['photo'] ?? '',
      name: map['name'] ?? '',
      cost: map['cost']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CardModel.fromJson(String source) =>
      CardModel.fromMap(json.decode(source));

  @override
  String toString() => 'Card(photo: $photo, name: $name, cost: $cost)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardModel &&
        other.photo == photo &&
        other.name == name &&
        other.cost == cost;
  }

  @override
  int get hashCode => photo.hashCode ^ name.hashCode ^ cost.hashCode;
}
