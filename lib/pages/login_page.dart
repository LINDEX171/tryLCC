import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color _primaryColor = Color.fromRGBO(125, 191, 211, 1.0);
Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);

var _deviceHeight;
var _deviceWidth;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _primaryColor,
      body: Container(
        height: _deviceHeight * 0.70,
        width: _deviceHeight * 0.55,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: _deviceHeight*0.10,),
            _avatarWidget(),
            //SizedBox(height: _deviceHeight*0.0,),
            _emailTextField(),
            _passwordTextField(),
            //SizedBox(height: _deviceHeight*0.05,),
            _loginButton()
          ],
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    var _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          color: _secondaryColor,
          image:
              DecorationImage(image: AssetImage("assets/images/images.jpeg"))),
    );
  }

  Widget _emailTextField() {
    return Container(
      width: _deviceWidth * 0.70,
      child: TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "lindex@gmail.com",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      width: _deviceWidth * 0.70,
      child: TextField(
        obscureText: true,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "password",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
        minWidth: _deviceWidth * 0.38,
        height: _deviceWidth * 0.12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: _primaryColor,
        child: Text(
          "login",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          print("ss");
        });
  }
}
