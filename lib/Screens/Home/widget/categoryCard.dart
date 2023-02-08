// ignore_for_file: file_names, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
    this.id,
    this.title,
    this.total,
    this.image,
    this.color,
  );

  final String? id;
  final String? title;
  final int? total;
  final String? image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2 - 2,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 28,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink,
              child: Column(
                children: const [
                  Text(
                    title!,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      // styling the text
                      fontSize: 16.0, //the size of the text
                      fontWeight: FontWeight.bold, // font weight
                    ), //text color
                  ),
                  // Row(
                  //   children: [Text("Total"), Text("$total")],
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
