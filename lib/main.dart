import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdeveloper/app_config.dart';
import 'package:flutterdeveloper/screens/blogs.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutterdeveloper/screens/wish_list.dart';
void main() {

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: AppConfig.primaryColor));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      color: AppConfig.primaryColor,
      home:  MyNevBar(),
    );
  }
}




class MyNevBar extends StatefulWidget {
  @override
  _MyNevBarState createState() => _MyNevBarState();
}

class _MyNevBarState extends State<MyNevBar>
{
  int currentIndex = 0;

  List listOfColors = [
    MyBlogs(),
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.orangeAccent,
    ),
    WishList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfColors[currentIndex],

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Blog'),
            activeColor: Colors.black38,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.circle_notifications),
            title: Text('Notification'),
            activeColor: Colors.black38,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat'),
            activeColor: Colors.black38,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.widgets_sharp),
            title: Text('WishList'),
            activeColor: Colors.black38,
            inactiveColor: Colors.black12,
          ),
        ],
      ),
    );
  }
}