import 'package:flutter/material.dart';
import 'package:tiktokclonecoding/sign_up/screen/sign_up_screen.dart';
import 'package:tiktokclonecoding/styles/themes.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok App',
      theme: Themes.themeData,
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
