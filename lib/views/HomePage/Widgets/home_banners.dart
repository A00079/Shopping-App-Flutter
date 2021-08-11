import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/models/card_banners.dart';
import 'package:shopingapp/utils/constants.dart';
import 'package:shopingapp/utils/custom_functions.dart';
import 'package:shopingapp/utils/widget_functions.dart';

class HomeBanners extends StatelessWidget {
  const HomeBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Container(
      padding: EdgeInsets.only(left: size.width / 45),
      height: size.width / 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16, right: 6),
        itemCount: cardBanners.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  width: size.width / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        CommonFun.getImgRelativePath(
                            cardBanners[index].bannerImage),
                      ),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.0,
                        spreadRadius: 2.1,
                        offset: Offset(0, 2.0),
                      ),
                    ],
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              addVerticalSpace(size.height / 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Super Burger', style: themeData.textTheme.headline5),
                  Text('Colarado, San Francisco',
                      style: themeData.textTheme.bodyText2),
                  addVerticalSpace(size.height / 150),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: COLOR_YELLOW,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width / 45,
                                vertical: size.width / 200),
                            child: Text('4.5',
                                textAlign: TextAlign.center,
                                style: customText(Colors.white, FontWeight.bold,
                                    size.width / 33)),
                          )),
                      addHorizontalSpace(size.height / 100),
                      Text('25min',
                          style: customText(
                              Colors.black, FontWeight.bold, size.width / 33)),
                      addHorizontalSpace(size.height / 100),
                      Icon(
                        Icons.delivery_dining_rounded,
                        color: Colors.green,
                        size: size.width / 25,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      addHorizontalSpace(size.height / 100),
                      Text('Free delivery',
                          style: customText(
                              Colors.black, FontWeight.bold, size.width / 33)),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
