

import 'package:flutter/material.dart';
import 'package:uas_rosita/components/custom_surfix_icon.dart';
import 'package:uas_rosita/components/default_button_custome_color.dart';
import 'package:uas_rosita/screens/Register/registrasi.dart';
import 'package:uas_rosita/size_config.dart';
import 'package:uas_rosita/utils/constants.dart';

class SignInform extends StatefulWidget{
 @override
 _SignInform createState() =>_SignInform();
}

class _SignInform extends State<SignInform> {

  String? Username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController (),
                        txtpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context){
    return Form(
       child: Column(
         children: [
          buildUsername (),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
               Checkbox(
                    value: remeber,
                    onChanged: (value) {
                     setState(() {
                        remeber = value;
                      });
                    }),
                 Text("tetap masuk"),
                 Spacer(),
                 GestureDetector(
                   onTap: () {
                    Navigator.pushNamed(context, registerScreen.routeName);
                   },
                   child: Text(
                     "Lupa Password",
                     style: TextStyle(decoration: TextDecoration.underline),
                     ),
                  )
              ], 
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "masuk",
            press: () {},
          ),
          SizedBox(height: 20,
          ),
          GestureDetector(
                   onTap: () {},
                   child: Text(
                     "Belum Punya akun ? Daftar Disini",
                     style: TextStyle(decoration: TextDecoration.underline),
                     ),
                  )
         ],
       ),
    );
  }


  TextFormField buildUsername() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText:'Username',
        hintText: 'Masukan Username Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/user.svg",)
            
          ),
    );
  }

 }

 TextFormField buildPassword() {
    var focusNode;
    var txtpassword;
    return TextFormField(
      controller: txtpassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText:'Password',
        hintText: 'Masukan password Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/user.svg",)
            
          ),
    );
  }

 
