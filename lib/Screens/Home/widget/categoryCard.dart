// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors_in_immutables, prefer_const_constructors
// ignore_for_file: file_names, use_key_in_widget_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    this.id,
    this.title,
    this.total,
    this.image,
    this.avatarColor,
  });

  final String? id;
  final String? title;
  final int? total;
  final String? image;
  final Color? avatarColor;

  String get stringTotal => '$total';
  // Color? get colorItem => color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2 - 2,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundColor: avatarColor,
                radius: 28,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  title!,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    // styling the text
                    fontSize: 16.0, //the size of the text
                    fontWeight: FontWeight.bold, // font weight
                  ), //text color
                ),
                Row(
                  children: [Text("Total"), Text(stringTotal)],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
