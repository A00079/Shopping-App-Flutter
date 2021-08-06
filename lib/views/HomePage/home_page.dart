import 'package:flutter/material.dart';
import 'package:shopingapp/models/card_banners.dart';
import 'package:shopingapp/models/card_categories.dart';
import 'package:shopingapp/utils/custom_functions.dart';
import 'package:shopingapp/utils/widget_functions.dart';

import 'Widgets/home_banners.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                padding: sidePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpace(size.height / 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width / 10,
                          height: size.height / 20,
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                CommonFun.getImgRelativePath(
                                    'user-profile.png'),
                              ),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 2.0,
                                spreadRadius: 0.2,
                                offset: Offset(0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.grey.shade600,
                          size: size.width / 13,
                        ),
                      ],
                    ),
                    addVerticalSpace(size.height / 40),
                    Text('Hello Clerk!',
                        style: customText(Colors.grey.shade500, FontWeight.bold,
                            size.width / 33)),
                    addVerticalSpace(size.height / 140),
                    Text('Make your own food,',
                        style: themeData.textTheme.headline3),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'stay at ',
                        style: themeData.textTheme.headline3,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'home.',
                              style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                        ],
                      ),
                    ),
                    addVerticalSpace(size.height / 50),
                  ],
                ),
              ),
              Container(
                  padding: sidePadding,
                  child: TextField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.verified),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: "Search your recipe ...",
                  ))),
              addVerticalSpace(size.height / 70),
              Padding(
                padding: sidePadding,
                child: Text('Categories',
                    style: customText(
                        Colors.black54, FontWeight.bold, size.width / 25)),
              ),
              addVerticalSpace(size.height / 70),
              Container(
                padding: EdgeInsets.only(left: size.width / 42),
                height: size.height / 8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cardcategories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: size.height / 8,
                            width: size.width / 5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1.0,
                                  spreadRadius: 0.1,
                                  offset: Offset(0, 1.0),
                                ),
                              ],
                              color:
                                  Color(cardcategories[index].cardBackground),
                            ),
                            child: Center(
                              child: Icon(
                                cardcategories[index].iconname,
                                color: Colors.black54,
                                size: size.width / 13,
                              ),
                            ),
                          ),
                        ),
                        addVerticalSpace(size.height / 120),
                        Text(cardcategories[index].label,
                            style: customText(Colors.grey.shade600,
                                FontWeight.w700, size.width / 33)),
                      ],
                    );
                  },
                ),
              ),
              addVerticalSpace(size.height / 40),
              HomeBanners(),
              addVerticalSpace(size.height / 30),
              Container(
                padding: sidePadding,
                child: Text('Food Recipes For You,',
                    style: customText(
                        Colors.black54, FontWeight.bold, size.width / 25)),
              ),
              addVerticalSpace(size.height / 70),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: size.width / 15,
                        backgroundImage: AssetImage(
                          CommonFun.getImgRelativePath('food1.jpg'),
                        ),
                        child: GestureDetector(onTap: () {}),
                      ),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: size.width / 15,
                        backgroundImage: AssetImage(
                          CommonFun.getImgRelativePath('food1.jpg'),
                        ),
                        child: GestureDetector(onTap: () {}),
                      ),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
