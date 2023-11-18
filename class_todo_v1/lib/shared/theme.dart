import 'package:flutter/material.dart';

// 하나의 코드 베이스에 light 모드와 dark 모드 적용 시키기
ThemeData initThemeData({required Brightness brightness}) {

  if(brightness == Brightness.light){
    return ThemeData(
      brightness: Brightness.light, // 브랜드 컬러, 앱에 기본 색상
      colorScheme: ColorScheme.light(
        primary: Colors.orange, // 주요 색상
        secondary: Colors.greenAccent, // 보조 색상
        tertiary: Colors.blueAccent, // 삼차 색상
      ),
    );
  }else{
    return ThemeData(
      brightness: Brightness.dark, // 브랜드 컬러, 앱에 기본 색상
      colorScheme: ColorScheme.dark(
        primary: Colors.orange, // 주요 색상
        secondary: Colors.greenAccent, // 보조 색상
        tertiary: Colors.blueAccent, // 삼차 색상
      ),
    );
  }



}
