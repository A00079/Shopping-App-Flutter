import 'dart:convert';

List<CardFood> fromJson(String str) =>
    List<CardFood>.from(json.decode(str).map((x) => CardFood.fromJson(x)));

String toJson(List<CardFood> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CardFood {
  CardFood({
    this.label,
    this.ratings,
    this.price,
  });

  var label;
  var ratings;
  var price;

  factory CardFood.fromJson(Map<String, dynamic> json) => CardFood(
        label: json["label"],
        ratings: json["ratings"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "ratings": ratings,
        "price": price,
      };
}
