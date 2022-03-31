import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdeveloper/app_config.dart';
import 'package:flutterdeveloper/widgets/blog_card.dart';
import 'package:flutterdeveloper/widgets/custom_btn.dart';
import 'package:flutterdeveloper/widgets/review_card.dart';

class MyBlogs extends StatefulWidget {
  const MyBlogs({Key? key}) : super(key: key);

  @override
  _MyBlogsState createState() => _MyBlogsState();
}

class _MyBlogsState extends State<MyBlogs> {

  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(10)), // Set this height
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: _appConfig.rWP(5),),
            decoration: BoxDecoration(
                color: AppConfig.primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hi, Hyder!",style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppConfig.f2,color: Colors.white,),),
                    Text("Lorem ipsum dolor sit amet",style: TextStyle(fontSize: AppConfig.f5,color: Colors.white,),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none,size: 30,color: Colors.white,),
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/user.png',),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: _appConfig.rWP(5),vertical: _appConfig.rHP(2)),
                child: Text("Blogs", style: TextStyle(fontSize: AppConfig.f3,fontWeight: FontWeight.bold,color: AppConfig.blogColor),)
            ),

            Container(
                alignment: Alignment.center,
                child: CustomBtn("Search tags",60.0,AppConfig.blogColor)),
           Column(children:[
             BlogCard()
             ,BlogCard(),
             BlogCard(),
             SizedBox(height: 5,),
             CustomBtn("See more", 60,AppConfig.blogColor),
             SizedBox(height: 5,),

           ]),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Reviews(25)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConfig.f2,color: AppConfig.reviewTextColor),),
                      Text("Write a review")
                    ],
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                ReviewCard(),
                ReviewCard(),
                Divider(
                  thickness: 3,
                ),
                ReviewCard(),
                SizedBox(height: 10,),
                CustomBtn("See more", 60,AppConfig.blogColor),
                SizedBox(height: 10,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
