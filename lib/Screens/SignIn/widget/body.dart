// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pet_finder_app/Screens/SignIn/widget/background.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pet_finder_app/utils/color_constants.dart';
import 'package:pet_finder_app/Screens/SignIn/widget/card_body.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    double borderWidth = 2;
    return Background(
      child: SafeArea(
        child: SizedBox(
          height: size.height * .9,
          width: size.width * .9,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.width * .1),
              Text("Hello Welcome Back"),
              SizedBox(height: size.width * .1),
              Text("Sign in to continue"),
              SizedBox(height: size.width * .1),
              CardBody(
                child: Container(
                  // height: 200,
                  margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 40.0),
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email"),
                            emailField(),
                            Text("Password"),
                            passwordsField(),
                            SizedBox(height: 20),
                            submitButton(),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(10),
                                  left: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Text("Gmail"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Facebook"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: "Email Address",
      hintText: 'userName@example.com',
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      suffixIcon: Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
      contentPadding: EdgeInsets.only(
        top: 14.0,
        bottom: 14.0,
        left: 14.0,
        right: 14.0,
      ),
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.grey.shade100,
    ),
  );
}

Widget passwordsField() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: "Enter Password",
      hintText: "Password",
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      suffixIcon: Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
      contentPadding: EdgeInsets.only(
        top: 14.0,
        bottom: 14.0,
        left: 14.0,
        right: 14.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      filled: true,
      fillColor: Colors.grey.shade100,
    ),
  );
}

Widget submitButton() {
  return LayoutBuilder(
    builder: (context, constraints) => SizedBox(
      width: constraints.maxWidth,
      height: 130,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: 6,
            left: 24,
            child: Container(
              width: constraints.maxWidth * 0.88,
              height: 45,
              // color: Colors.yellow,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 2),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(constraints.maxWidth * 0.90, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.black, width: 2)),
            child: Text("Submit"),
          ),
        ],
      ),
    ),
  );
}
