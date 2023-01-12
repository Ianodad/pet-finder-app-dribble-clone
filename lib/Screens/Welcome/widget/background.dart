import 'package:flutter/material.dart';
import 'package:pet_finder_app/utils/color_constants.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 90,
              width: size.width,
              child: Image.asset("assets/images/wave_background.png",
                  width: size.width)),
          child,
        ],
      ),
    );
  }
}
