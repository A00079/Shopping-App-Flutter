import 'package:flutter/material.dart';
import 'package:shopingapp/views/HomePage/Widgets/card_categories.dart';
import 'package:shopingapp/utils/custom_functions.dart';
import 'package:shopingapp/utils/widget_functions.dart';
import 'package:shopingapp/views/HomePage/Widgets/card_food.dart';
import 'package:shopingapp/views/HomePage/Widgets/home_infochips.dart';
import 'Widgets/home_banners.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
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
                          width: size.width / 13,
                          height: size.width / 13,
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
                        Colors.black, FontWeight.bold, size.width / 25)),
              ),
              addVerticalSpace(size.height / 70),
              CardCategories(),
              addVerticalSpace(size.height / 40),
              HomeBanners(),
              addVerticalSpace(size.height / 30),
              Padding(
                padding: sidePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delicious Food',
                        style: customText(
                            Colors.black, FontWeight.bold, size.width / 22)),
                    Text('We make fresh and healthy food',
                        style: customText(
                            Colors.grey, FontWeight.bold, size.width / 32, 1)),
                    addVerticalSpace(size.height / 60),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: size.width / padding),
                height: size.height / 16,
                child: InfoChip(),
              ),
              addVerticalSpace(size.height / 20),
              Container(
                padding: EdgeInsets.only(left: size.width / padding),
                height: size.height / 3,
                child: CardFoodItems(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
