// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_finder_app/models/category.dart';
import 'package:pet_finder_app/utils/color_constants.dart';

import 'package:pet_finder_app/Screens/Home/widget/categoryCard.dart';

import 'package:pet_finder_app/data/category.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // int totalWidth = 300;
    return SafeArea(
      minimum: EdgeInsets.fromLTRB(30, 80, 30, 0),
      child: Column(children: [
        userInfoMenu(),
        SizedBox(height: size.height * .04),
        Expanded(flex: 0, child: searchBar()),
        SizedBox(height: size.height * .03),
        Expanded(flex: 0, child: categoryHeader()),
        // CategoryCard("D01", "Hamster", 200, "", Colors.orange)
        // gridSystem()
        Expanded(
          // wrap in Expanded
          child: gridSystem(),
        )
      ]),
    );
  }
}

Widget userInfoMenu() {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/images/user_avatar.svg",
          width: 40,
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/images/bell.svg",
              width: 20,
            ),
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              "assets/images/lighting.svg",
              width: 20,
            ),
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              "assets/images/menu.svg",
              width: 20,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget searchBar() {
  const widthPercent = 0.90;
  return LayoutBuilder(
    builder: (context, constraints) => Transform.rotate(
      angle: -0.015,
      child: SizedBox(
        width: constraints.maxWidth,
        height: 60,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 3,
              left: 23,
              child: Container(
                width: constraints.maxWidth * widthPercent,
                height: 55,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  color: ColorConstant.primaryYellow,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ),
            Container(
              // color: ColorConstant.flashWhite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 2),
              ),
              width: constraints.maxWidth * widthPercent,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  hintText: "Search pet",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black, width: 4.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget categoryHeader() => Container(
    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Pet Category"),
        SvgPicture.asset(
          "assets/images/dots.svg",
          width: 20,
        ),
      ],
    ),
  );

Widget gridSystem() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      childAspectRatio: 2,
    ),
    itemCount: CATEGORY_DATA.length,
    itemBuilder: (context, index) {
      final category = CATEGORY_DATA[index];
      final count = index + 1;
      return CategoryCard(
          // key: '$index',
          key: Key('$count'),
          id: category.id!,
          title: category.title!,
          total: category.total,
          image: category.image,
          avatarColor: category.color);
    },
  );
}

// CategoryCard(id: CATEGORY_DATA[index].id!, title: CATEGORY_DATA[index].title!,
//               total: CATEGORY_DATA[index].total, image: CATEGORY_DATA[index].image, color :CATEGORY_DATA[index].color),