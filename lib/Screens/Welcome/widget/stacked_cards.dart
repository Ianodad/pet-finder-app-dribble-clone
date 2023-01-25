import 'package:flutter/material.dart';

class StackedCards extends StatelessWidget {
  const StackedCards({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    double dashWidth = 10;
    int emptyWidth = 5;
    double dashHeight = 2;
    Color dashColor = Colors.black;
    double borderWidth = 2;
    return Container(
      height: size.height * .40,
      width: size.width * .82,
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
                    border: Border.all(color: Colors.black, width: borderWidth),
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
                            Border.all(color: Colors.black, width: borderWidth),
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
                          top: Radius.circular(30.0),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, -2),
                              spreadRadius: 0,
                              blurRadius: 0),
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(-2, -2),
                              spreadRadius: 0,
                              blurRadius: 0)
                        ],
                      ),
                      // ignore: avoid_unnecessary_containers
                      child: Stack(
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * .95,
                            height: constraints.maxHeight * .94,
                            child: child,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) => Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  verticalDirection: VerticalDirection.down,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
