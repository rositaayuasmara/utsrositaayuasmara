

import 'package:flutter/material.dart';
import 'package:uas_rosita/components/Login/LoginForm.dart';
import 'package:uas_rosita/size_config.dart';
import 'package:uas_rosita/utils/constants.dart';

class logincomponent extends StatefulWidget {
  @override
  _logincomponent createState() => _logincomponent();
}

class _logincomponent extends State<logincomponent> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight *0.04,
                  ),
                  simpleshadow(
                    child: Image.asset(
                      "assets/images/icon.png",
                      height: 150,
                      width: 202,
                      ),
                      Opacity:0.5,
                      Color: kSecondaryColor,
                      Offset: Offset(5, 5),
                      sigma: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "login",
                            style: mTitleStyle,
                            )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                     ),
                     SignInform()
               ],
              ),
            ),
          ),
        ),
      );
  }
  
  simpleshadow({required Image child, required double Opacity, required Color Color, required Offset Offset, required int sigma}) {}
}