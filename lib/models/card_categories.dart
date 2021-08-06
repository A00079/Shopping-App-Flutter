import 'package:flutter/material.dart';

class CardCategories {
  var label;
  var iconname;
  var cardBackground;

  CardCategories(this.label, this.iconname, this.cardBackground);
}

List<CardCategories> cardcategories = cardCategoriesData
    .map(
      (item) => CardCategories(
        item['label'],
        item['iconname'],
        item['cardBackground'],
      ),
    )
    .toList();

var cardCategoriesData = [
  {
    "label": "Popular",
    "iconname": Icons.fireplace,
    "cardBackground": 0xFFFFC857,
  },
  {
    "label": "Western",
    "iconname": Icons.local_pizza_sharp,
    "cardBackground": 0xFFF4F3F1,
  },
  {
    "label": "Drinks",
    "iconname": Icons.local_drink,
    "cardBackground": 0xFFF4F3F1,
  },
  {
    "label": "Local",
    "iconname": Icons.local_pizza,
    "cardBackground": 0xFFF4F3F1,
  },
  {
    "label": "Dessert",
    "iconname": Icons.local_pizza,
    "cardBackground": 0xFFF4F3F1,
  },
  {
    "label": "South",
    "iconname": Icons.local_pizza,
    "cardBackground": 0xFFF4F3F1,
  }
];
