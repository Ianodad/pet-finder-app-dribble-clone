import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pet_finder_app/utils/color_constants.dart';
import 'package:pet_finder_app/Widgets/CardBody/card.body.dart';

import 'package:pet_finder_app/Screens/SignUp/widget/background.dart';
import 'package:pet_finder_app/Screens/SignUp/widget/sign_up_form.dart';
import 'package:pet_finder_app/Screens/SignIn/signin.dart';

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
          child: Stack(
            children: [
              Positioned(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.primaryGreen,
                    // fixedSize: Size(size.width * 0.02, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.width * .05),
                  const Text("Want know where you pet is at all times "),
                  SizedBox(height: size.width * .05),
                  Transform.rotate(
                    angle: -.022,
                    child: SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      child: CardBody(
                        cardHeight: .74,
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
                              margin: const EdgeInsets.only(
                                  right: 20.0, left: 20.0, top: 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: SignUpForm(
                                      constraints: constraints,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Stack(
                                      children: [
                                        Text.rich(
                                          textAlign: TextAlign.center,
                                          TextSpan(
                                            text: 'Already have an account? ',
                                            children: [
                                              TextSpan(
                                                text: 'Sign In',
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap =
                                                          () => Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) {
                                                                    return const SigninScreen();
                                                                  },
                                                                ),
                                                              ),
                                                style: const TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
