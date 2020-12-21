import 'package:flutter/material.dart';
import 'package:vocabulary_app/categoryList.dart';
import 'package:vocabulary_app/theme/app_theme.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme(context),
      home: CategoryList(),
    );
  }
}
