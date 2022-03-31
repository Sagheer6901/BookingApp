import 'package:flutter/material.dart';
import 'package:flutterdeveloper/app_config.dart';

class CustomBtn extends StatelessWidget {
  var text;
  double width;
  Color color;

  CustomBtn(this.text,this.width,this.color, {Key? key}) : super(key: key);
  late AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: _appConfig.rH(5),
        width: _appConfig.rW(width),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(30))
        ),
        child: Text(text,style: TextStyle(fontSize: AppConfig.f5,color: Colors.white),),
      ),
    );
  }
}
