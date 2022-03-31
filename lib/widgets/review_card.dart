import 'package:flutter/material.dart';

import '../app_config.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  get rating => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/user.png',),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reviews(25)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConfig.f4,color: AppConfig.reviewTextColor),),
                      Text("Last updateed 2 jan 2020",style: TextStyle(fontSize: AppConfig.f6),)
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Very Good",style: TextStyle(fontSize: AppConfig.f6),),
                ],
              )
            ],
          ),
          SizedBox(height: 5,),
          Expanded(child: Text(AppConfig.dummyReview))
        ],
      ),
    );
  }
}
