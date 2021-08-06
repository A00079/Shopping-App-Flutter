import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopingapp/utils/custom_functions.dart';
import 'package:shopingapp/views/HomePage/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(size.height / 90), // here the desired height
        child: AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Container(
            padding: sidePadding,
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Wrap(
                  children: [
                    Container(
                      width: size.width / 1.1,
                      height: size.height / 1.8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  CommonFun.getImgRelativePath('start.png')),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 30),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Shopping Time! \n',
                            style: themeData.textTheme.headline1,
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'The coolest shopping app of your life. \n And it is true.',
                                  style: themeData.textTheme.bodyText2),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            width: size.width / 1.2, height: size.height / 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow[700],
                          ),
                          child: Text('Start Shopping',
                              style: themeData.textTheme.headline4),
                          onPressed: () {
                            Get.off(HomePage());
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 20),
                      child: Center(
                        child: Text('Fast Delivery, Perfect service.',
                            style: themeData.textTheme.subtitle2),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
