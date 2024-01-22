

import 'package:flutter/material.dart';
import 'package:uas_rosita/size_config.dart';

class registerScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
    );
  }
}