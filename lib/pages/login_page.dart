import 'package:flutter/material.dart';

Color _primaryColor = Color.fromRGBO(10, 100, 20, 10);

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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: _deviceHeight*0.15,),
            avatarWidget(),
            //SizedBox(height: _deviceHeight*0.01,),
            emailInputField(),
            passwordInputField(),
            SizedBox(height: _deviceHeight*0.05,),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget avatarWidget() {
    var _circeD = _deviceHeight * 0.25;
    return Container(
      height: _circeD,
      width: _circeD,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage("assets/images/images.jpeg"))),
    );
  }

  Widget emailInputField() {
    return Container(
      width: _deviceWidth*0.70,
      child: TextField(
        style: TextStyle(color: Colors.white),
        autocorrect: false,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: "lindex171@gmail.com",
            hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            )
        ),
      ),
    );
  }

  Widget passwordInputField(){
    return Container(
      width: _deviceWidth*0.70,
      child: TextField(
        obscureText: true,
        style: TextStyle(color: Colors.white),
        autocorrect: false,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: "password",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            )
        ),
      ),
    );
  }

  Widget  loginButton(){
    return MaterialButton(
        onPressed: null,
    textColor: Colors.white,);
  }
}
