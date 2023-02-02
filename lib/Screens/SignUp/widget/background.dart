import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: 60,
            width: size.width * .8,
            child: Image.asset(
              "assets/images/confeti.png",
            ),
          ),
          Positioned(
            top: 30,
            width: size.width * 1.1,
            height: size.height * 1.1,
            child: Image.asset(
              "assets/images/background-colors.png",
            ),
          ),
          child,
        ]),
      ),
    );
  }
}
