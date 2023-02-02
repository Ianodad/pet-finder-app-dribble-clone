// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, must_be_immutable
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pet_finder_app/utils/color_constants.dart';
import 'package:pet_finder_app/Widgets/CardBody/card.body.dart';

import 'package:pet_finder_app/Screens/SignUp/signup.dart';
import 'package:pet_finder_app/Screens/SignIn/widget/background.dart';
import 'package:pet_finder_app/Screens/SignIn/widget/sign_in_form.dart';

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
              Text(
                "Hello Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.width * .1),
              Text("Sign in to continue"),
              SizedBox(height: size.width * .1),
              Transform.rotate(
                angle: -.022,
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: CardBody(
                    cardHeight: .70,
                    cardWidth: .97,
                    child: Transform.rotate(
                      angle: .022,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Container(
                          height: constraints.maxHeight,
                          // decoration: BoxDecoration(
                          //   border:
                          //       Border.all(color: Colors.black, width: borderWidth),
                          // ),
                          margin: EdgeInsets.only(
                              right: 20.0, left: 20.0, top: 40.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: SignInForm(
                                  constraints: constraints,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 6,
                                      left: 24,
                                      child: Container(
                                        width: constraints.maxWidth * 0.78,
                                        height: 45,
                                        // color: Colors.yellow,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: Colors.black, width: 2),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                ColorConstant.primaryRed,
                                            minimumSize: Size(
                                                constraints.maxWidth * 0.40,
                                                45),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                // right: Radius.circular(10),
                                                left: Radius.circular(10),
                                              ),
                                            ),
                                            side: BorderSide(
                                                color: Colors.black, width: 2),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Image.asset(
                                                "assets/images/google-logo.png",
                                                width: 17,
                                              ),
                                              SizedBox(
                                                  width: constraints.maxWidth *
                                                      .01),
                                              Text("Gmail"),
                                            ],
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                ColorConstant.primaryYellow,
                                            minimumSize: Size(
                                                constraints.maxWidth * 0.40,
                                                45),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(10),
                                                // left: Radius.circular(10),
                                              ),
                                              side: BorderSide(
                                                  color: Colors.black,
                                                  width: 2),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/facebook-logo.png",
                                                width: 17,
                                              ),
                                              SizedBox(
                                                  width: constraints.maxWidth *
                                                      .01),
                                              Text("Facebook"),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Text.rich(
                                      textAlign: TextAlign.center,
                                      TextSpan(
                                          text: 'by continuing you accept our ',
                                          children: [
                                            TextSpan(
                                                text: 'Terms',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                )),
                                            TextSpan(text: ' and '),
                                            TextSpan(
                                                text:
                                                    'Condition Privacy Policy',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                )),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Text.rich(
                                      textAlign: TextAlign.center,
                                      TextSpan(
                                        text: 'Dont have an account? ',
                                        children: [
                                          TextSpan(
                                            text: 'Sign Up',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () => Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return SignupScreen();
                                                      },
                                                    ),
                                                  ),
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
