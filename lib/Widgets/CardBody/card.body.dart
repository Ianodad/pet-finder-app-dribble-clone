import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
    required this.child,
    required this.cardWidth,
    required this.cardHeight,
  });
  final Widget child;
  final double cardWidth;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    double borderWidth = 2;
    return Stack(
      children: [
        Container(
          height: size.height * cardHeight,
          width: size.width * cardWidth,
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
                      height: constraints.maxHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Colors.black, width: borderWidth),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: constraints.maxWidth * .8,
                          height: constraints.maxHeight * .97,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.black, width: borderWidth),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: constraints.maxWidth * .95,
                            height: constraints.maxHeight * .94,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.black, width: borderWidth),
                            ),
                            child: child),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
