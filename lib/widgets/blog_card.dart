import 'package:flutter/material.dart';
import 'package:flutterdeveloper/app_config.dart';
import 'package:flutterdeveloper/widgets/custom_btn.dart';

class BlogCard extends StatelessWidget {
  BlogCard({Key? key}) : super(key: key);
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return InkWell(
      child: Container(
        height: 500,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: AppConfig.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),

                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    child: Image.asset(
                      "assets/images/snow_mountains.jpg",
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                Positioned(
                  right: 20,
                    top: 20,
                    child: Icon(Icons.favorite))
              ],
            ),
            SizedBox(height: 5,),
            Container(
              alignment: Alignment.topLeft,
                width: 100,
                height: 30,
                child: Text("Lorem ipsum dolor sit amet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConfig.f5,color: AppConfig.blogColor),)),
            SizedBox(height: 5,),

            Row(
              children: [
                Icon(Icons.supervised_user_circle,size: 20,),
                Text("by author"),
                Text("Traboon",style: TextStyle(color: AppConfig.blogColor),),

              ],
            ),
            SizedBox(height: 5,),

            Container(
                child: Text(
                  AppConfig.dummyText,
                  overflow: TextOverflow.clip,
                ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2 Jan 2022"),
                CustomBtn("Read more",30.0,AppConfig.blogColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}
