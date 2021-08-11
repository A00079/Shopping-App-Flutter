import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/utils/widget_functions.dart';

class CardCategories extends StatefulWidget {
  const CardCategories({Key? key}) : super(key: key);

  @override
  _CardCategoriesState createState() => _CardCategoriesState();
}

class _CardCategoriesState extends State<CardCategories> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    Icons.fireplace,
    Icons.local_pizza_sharp,
    Icons.local_drink,
    Icons.local_pizza,
    Icons.local_pizza,
    Icons.local_pizza
  ];

  List<String> _labels = [
    'Popular',
    'Western',
    'Drinks',
    'Local',
    'Dessert',
    'South'
  ];

  Widget _buildLabels(int index) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Container(
      margin: EdgeInsets.only(right: size.width / 30),
      child: Text(_labels[index],
          textAlign: TextAlign.start,
          style: customText(
              Colors.grey.shade600, FontWeight.w700, size.width / 33)),
    );
  }

  Widget _buildIcon(int index) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: size.width / 30),
          height: size.width / 4.5,
          width: size.width / 6,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1.0,
                spreadRadius: 0.1,
                offset: Offset(0, 1.0),
              ),
            ],
            color: _selectedIndex == index ? Colors.yellow[700] : Colors.white,
          ),
          child: Center(
            child: Icon(
              _icons[index],
              color: _selectedIndex == index ? Colors.white : Colors.black54,
              size: size.width / 14,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Container(
      padding: EdgeInsets.only(left: size.width / 42),
      height: size.width / 4.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16, right: 6),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildIcon(index),
              addVerticalSpace(size.height / 120),
              _buildLabels(index),
            ],
          );
        },
      ),
    );
  }
}
