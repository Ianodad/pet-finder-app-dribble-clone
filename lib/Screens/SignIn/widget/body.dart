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
                    margin: EdgeInsets.all(20.0),
                    child: Form(
                      child: Column(
                        children: [
                          emailField(),
                          passwordsField(),
                          submitButton(),
                        ],
                      ),
                    )),
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
    ),
  );
}

Widget passwordsField() {
  return TextFormField(
    obscureText: true,
    decoration:
        InputDecoration(labelText: "Enter Password", hintText: "Password"),
  );
}

Widget submitButton() {
  return LayoutBuilder(
    builder: (context, constraints) => Stack(
      children: [
        Container(
          width: constraints.maxWidth * .6,
          height: constraints.maxHeight * .3,
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: Text("Submit"),
        ),
      ],
    ),
  );
}
