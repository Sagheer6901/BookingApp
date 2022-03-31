import 'package:flutter/material.dart';

class AppConfig {
  BuildContext _context;
  double _height=0;
  double _width=0;
  double _heightPadding=0;
  double _widthPadding=0;

  AppConfig(this._context) {
    MediaQueryData _queryData = MediaQuery.of(_context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding =
        _height - ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double rH(double v) {
    return _height * v;
  }

  double rW(double v) {
    return _width * v;
  }

  double rHP(double v) {
    return _heightPadding * v;
  }

  double rWP(double v) {
    return _widthPadding * v;
  }




  static const Color primaryColor =  Color.fromARGB(255,37,47,82);
  static Color blogColor = Color.fromARGB(255,155,197,61);
  static Color wishListColor = Color.fromARGB(255,254,231,76);
  static Color ratingIconColor = Colors.yellow;
  static Color shadeColor = Colors.black12;
  static Color hintTextColor = Colors.black26;
  static Color reviewTextColor = Color.fromARGB(255,61,66,85);
  static String dummyReview = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor';
  static String dummyText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  static double f6 = 12;
  static double f5 = 14;
  static double f4 = 16;
  static double f3 = 18;
  static double f2 = 20;
  static double f1 = 24;

}