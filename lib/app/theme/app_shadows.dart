import 'package:flutter/rendering.dart';

class AppShadows {
  AppShadows._();
  static const List<BoxShadow> card = [
    BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 10)),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(color: Color(0x22000000), blurRadius: 12, offset: Offset(0, 5)),
  ];
}
