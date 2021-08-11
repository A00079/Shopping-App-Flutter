import 'package:flutter/material.dart';
import 'package:shopingapp/controllers/cardfood_controller.dart';
import 'package:shopingapp/utils/widget_functions.dart';

class CardFoodItems extends StatelessWidget {
  const CardFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardFoodController cardFoodController = CardFoodController();
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 25, right: 6),
      itemCount: cardFoodController.cardItemsCount,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: size.width / 35),
                height: size.width / 2,
                width: size.width / 2.6,
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
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width / 3,
                            height: size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=602&q=80",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      addVerticalSpace(size.width / 58),
                      Text('Burgers', style: themeData.textTheme.headline5),
                      Text('South California',
                          style: themeData.textTheme.subtitle2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: size.width / 28,
                            color: Colors.yellow[700],
                          ),
                          Icon(
                            Icons.star,
                            size: size.width / 28,
                            color: Colors.yellow[700],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rs. 245',
                              style: customText(Colors.green, FontWeight.bold,
                                  size.width / 29)),
                          Icon(
                            Icons.arrow_forward,
                            size: size.width / 20,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
