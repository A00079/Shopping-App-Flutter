import 'package:flutter/material.dart';
import 'package:shopingapp/utils/custom_functions.dart';
import 'package:shopingapp/utils/widget_functions.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Container(
      height: size.width / 1,
      padding: EdgeInsets.symmetric(
          horizontal: size.width / 20, vertical: size.width / 20),
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        crossAxisSpacing: size.width / 50,
        mainAxisSpacing: size.width / 25,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(children: [
                    Container(
                      height: size.width / 1,
                      width: size.width / 1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            CommonFun.getImgRelativePath('food1.jpg'),
                          ),
                          fit: BoxFit.fill,
                        ),
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            offset: Offset(0, 0.5),
                          ),
                        ],
                        color: Colors.grey.shade200,
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      right: 7,
                      child: Container(
                        width: size.width / 9,
                        height: size.width / 28,
                        decoration: BoxDecoration(
                          color: Colors.yellow[500],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child:
                                      Icon(Icons.star, size: size.width / 29),
                                ),
                                TextSpan(
                                    text: " 4.5",
                                    style: customText(Colors.black87,
                                        FontWeight.bold, size.width / 33)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), //C
                  ]),
                ),
                addVerticalSpace(size.height / 150),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Super Burger',
                        textAlign: TextAlign.start,
                        style: themeData.textTheme.headline5),
                    Text('Francisco',
                        textAlign: TextAlign.start,
                        style: customText(
                            Colors.black38, FontWeight.bold, size.width / 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rs 200.00',
                            textAlign: TextAlign.start,
                            style: themeData.textTheme.headline6),
                        Icon(
                          Icons.verified,
                          color: Colors.grey,
                          size: size.width / 22,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
