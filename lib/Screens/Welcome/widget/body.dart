// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pet_finder_app/Screens/Welcome/widget/background.dart';
import 'package:pet_finder_app/Screens/Welcome/widget/stacked_cards.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pet_finder_app/utils/color_constants.dart';

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
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Lets go find new pet"),
                                  Expanded(
                                    child: Text(
                                        "The secret to making new friends is as simple as being open to it. Here are things you can do to fill your calender."),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: size.height * .3,
              //   decoration: BoxDecoration(
              //     color: Colors.green,
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(color: Colors.black),
              //   ),
              // ),
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
