import 'package:flutter/material.dart';
import 'package:pet_finder_app/Screens/Welcome/widget/background.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:pet_finder_app/utils/color_constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    double dashWidth = 10;
    int emptyWidth = 5;
    double dashHeight = 2;
    Color dashColor = Colors.black;

    return Background(
      child: SafeArea(
        child: SizedBox(
          height: size.height * .9,
          width: size.width * .9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // height: size.height * .9,
            children: [
              Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  // border: Border.all(color: Colors.black),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: constraints.maxWidth * .6,
                            height: constraints.maxHeight * .5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: constraints.maxWidth * .8,
                                height: constraints.maxHeight * .977,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: constraints.maxWidth * .95,
                                height: constraints.maxHeight * .94,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30.0)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3, -3),
                                        spreadRadius: 0,
                                        blurRadius: 0),
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(-3, -3),
                                        spreadRadius: 0,
                                        blurRadius: 0)
                                  ],
                                ),
                                // ignore: avoid_unnecessary_containers
                                child: LayoutBuilder(
                                  builder: (context, constraints) => Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        children: List.generate(
                                          constraints.maxWidth ~/
                                              (dashWidth + emptyWidth),
                                          (_) => Container(
                                            width: 10,
                                            height: dashHeight,
                                            color: dashColor,
                                            margin: EdgeInsets.only(
                                                left: emptyWidth / 2,
                                                right: emptyWidth / 2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // const Positioned(
                      //   bottom: -8,
                      //   right: -8,
                      //   child: CircleAvatar(
                      //     radius: 16,
                      //     backgroundColor: Colors.white,
                      //     foregroundColor: Colors.white,
                      //   ), //CircularAvatar
                      // ),
                      // const Positioned(
                      //   bottom: -8,
                      //   left: -8,
                      //   child: CircleAvatar(
                      //     radius: 16,
                      //     backgroundColor: Colors.white,
                      //     foregroundColor: Colors.white,
                      //   ), //CircularAvatar
                      // ),
                    ],
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
