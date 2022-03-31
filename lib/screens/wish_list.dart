import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdeveloper/app_config.dart';
import 'package:flutterdeveloper/widgets/blog_card.dart';
import 'package:flutterdeveloper/widgets/custom_btn.dart';
import 'package:flutterdeveloper/widgets/review_card.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutterdeveloper/widgets/wish_list_card.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(15)), // Set this height
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: _appConfig.rWP(5), vertical: _appConfig.rHP(5)),
              decoration: BoxDecoration(
                  color: AppConfig.primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    "Whish List",
                    style: TextStyle(
                        fontSize: AppConfig.f2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(
                      'assets/images/user.png',
                    ),
                  ),
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(
                    horizontal: _appConfig.rWP(5), vertical: _appConfig.rHP(2)),
                child: Text(
                  "Your Choosed Plans",
                  style: TextStyle(
                      fontSize: AppConfig.f3,
                      fontWeight: FontWeight.bold,
                      color: AppConfig.blogColor),
                )),
            Container(
              height: 300,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              // color: AppConfig.primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                            ),
                            child:  ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/snow_mountains.jpg",
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )),
                        Positioned(
                            right: 20, top: 20, child: Icon(Icons.favorite))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mingora",style: TextStyle(fontSize: AppConfig.f4, fontWeight: FontWeight.bold,color: AppConfig.primaryColor)),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 10,
                              ),
                              Text("Swat,Pakistan")
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Return Trip",style: TextStyle(fontSize: AppConfig.f5, fontWeight: FontWeight.bold,color: AppConfig.primaryColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Rs"),
                              Text(" 5000",style: TextStyle(fontSize: AppConfig.f5, fontWeight: FontWeight.bold,color: AppConfig.primaryColor)),
                              Text(" for 5 hours")
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            VehicleCard(),
            HotelCard(),
            SizedBox(
              height: 5,
            ),
            CustomBtn("Pay", 60,AppConfig.wishListColor),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
