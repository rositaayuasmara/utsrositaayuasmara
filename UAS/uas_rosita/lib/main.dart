

import 'package:flutter/material.dart';
import 'package:uas_rosita/routes.dart';
import 'package:uas_rosita/screens/Login/LoginScreens.dart';
import 'package:uas_rosita/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "TOKO DISJOKEY",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    ));
}