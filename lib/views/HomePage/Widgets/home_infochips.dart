import 'package:flutter/material.dart';
import 'package:shopingapp/controllers/services_controller.dart';
import 'package:shopingapp/models/info_chips.dart';
import 'package:shopingapp/utils/widget_functions.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ServicesController servicesController = ServicesController();
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = size.width / 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 25, right: 6),
      itemCount: infoChips.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                servicesController.read(
                    'https://foodorder.free.beeceptor.com', '/burgers');
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: size.width / 8,
                width: size.width / 3.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(10),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Icon(
                        infoChips[index].iconname,
                        color: Colors.grey[700],
                        size: size.width / 13,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(3.0),
                        child: Text(infoChips[index].textdiscription,
                            textAlign: TextAlign.start,
                            style: customText(Colors.grey.shade500,
                                FontWeight.w700, size.width / 33, 1.2)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
