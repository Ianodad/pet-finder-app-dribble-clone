// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import "package:pet_finder_app/mixins/validation.dart";
import 'package:pet_finder_app/utils/color_constants.dart';

import 'package:pet_finder_app/Screens/Home/home.dart';
import 'package:dotted_border/dotted_border.dart';

class SignInForm extends StatelessWidget with ValidationMixin {
  SignInForm({
    Key? key,
    required this.constraints,
  }) : super(key: key);
  final BoxConstraints constraints;
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Email"),
          SizedBox(height: constraints.maxHeight * .03),
          emailField(),
          SizedBox(height: constraints.maxHeight * .03),
          const Text("Password"),
          SizedBox(height: constraints.maxHeight * .03),
          passwordsField(),
          SizedBox(height: constraints.maxHeight * .05),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
        hintText: 'userName@example.com',
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        contentPadding: const EdgeInsets.only(
          top: 14.0,
          bottom: 14.0,
          left: 14.0,
          right: 14.0,
        ),
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
      validator: validateEmail,
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget passwordsField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Enter Password",
        hintText: "Password",
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        contentPadding: const EdgeInsets.only(
          top: 14.0,
          bottom: 14.0,
          left: 14.0,
          right: 14.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
      validator: validatePassword,
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget submitButton() {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        height: 80,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: 6,
              left: 24,
              child: Container(
                width: constraints.maxWidth * 0.88,
                height: 45,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.reset();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const HomeScreen();
                  //     },
                  //   ),
                  // );
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ),
                );
                // print(formKey.currentState!.validate());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.primaryGreen,
                minimumSize: Size(constraints.maxWidth * 0.90, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: const BorderSide(color: Colors.black, width: 2),
              ),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
