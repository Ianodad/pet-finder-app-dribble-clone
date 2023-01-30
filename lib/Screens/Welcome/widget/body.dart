// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pet_finder_app/Screens/Welcome/widget/background.dart';
import 'package:pet_finder_app/Screens/Welcome/widget/stacked_cards.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pet_finder_app/utils/color_constants.dart';

import 'package:pet_finder_app/Screens/SignIn/signin.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    return Background(
      child: SafeArea(
        child: SizedBox(
          height: size.height * .9,
          width: size.width * .9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // height: size.height * .9,
            children: [
              Transform.rotate(
                angle: 0.03,
                child: StackedCards(
                  child: SizedBox(
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/images/orbit_background.png',
                        width: 30, height: 40),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Transform.rotate(
                angle: 3.11,
                child: StackedCards(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryYellow,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) => Row(
                            children: [
                              SizedBox(width: constraints.maxWidth * .15),
                              VerticalLines(width: constraints.maxWidth * .15),
                              SizedBox(width: constraints.maxWidth * .15),
                              VerticalLines(width: constraints.maxWidth * .15),
                              SizedBox(width: constraints.maxWidth * .15),
                              VerticalLines(width: constraints.maxWidth * .15),
                            ],
                          ),
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) => Image.asset(
                            'assets/images/confeti.png',
                            width: constraints.maxWidth * .9,
                            height: constraints.maxHeight * .9,
                          ),
                        ),
                        Transform.rotate(
                          angle: -3.1,
                          child: LayoutBuilder(
                            builder: (context, constraints) => Container(
                              width: constraints.maxWidth * .95,
                              height: constraints.maxHeight * .95,
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.center,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: constraints.maxHeight * .1),
                                    Text(
                                      "Lets go find new pet",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        height: constraints.maxHeight * .1),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "The secret to making new friends is as simple as being open to it. Here are things you can do to fill your calender.",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Positioned(
                                          top: 16,
                                          left: 12,
                                          width: constraints.maxWidth * .61,
                                          height: 45,
                                          child: Container(
                                            height: 33,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1.0),
                                            ),
                                            child: const Text(
                                              'Get Started',
                                              style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 13.0),
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return SigninScreen();
                                                },
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: constraints.maxWidth * .6,
                                            decoration: BoxDecoration(
                                              color: ColorConstant.primaryGreen,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 2.0),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text(
                                                  'Get Started',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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

class VerticalLines extends StatelessWidget {
  const VerticalLines({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
          width: width,
          decoration: BoxDecoration(
            color: ColorConstant.flashWhite,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.0),
            ),
          )),
    );
  }
}
