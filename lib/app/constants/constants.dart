import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String pokeBallUrl = 'images/pokeball.png';
  static const String title = 'Pokedex';
  static TextStyle titleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(36));
  }

  static TextStyle pokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }

  static TextStyle pokemonChipNameTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(16));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.7).sp;
    }
  }

  static TextStyle getPokeInfoLabelTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(16));
  }

  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(color: Colors.black, fontSize: _calculateFontSize(16));
  }
}
