import 'package:flutter/material.dart';

class InfoChip {
  final dynamic iconname;
  final dynamic textdiscription;
  final dynamic iconcolor;

  InfoChip(this.iconname, this.textdiscription, this.iconcolor);
}

List<InfoChip> infoChips = infoChipsData
    .map((item) => InfoChip(
          item['iconname'],
          item['textdiscription'],
          item['iconcolor'],
        ))
    .toList();

var infoChipsData = [
  {
    'iconname': Icons.location_pin,
    'iconcolor': 0xFF000000,
    'textdiscription': 'Free Delivery'
  },
  {
    'iconname': Icons.high_quality,
    'iconcolor': 0xFF000000,
    'textdiscription': 'Best Quality'
  },
  {
    'iconname': Icons.health_and_safety,
    'iconcolor': 0xFF000000,
    'textdiscription': 'Top Food Safty'
  },
  {
    'iconname': Icons.gpp_good,
    'iconcolor': 0xFF000000,
    'textdiscription': 'Special Offers'
  }
];
