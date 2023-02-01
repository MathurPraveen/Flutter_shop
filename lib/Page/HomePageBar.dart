import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomePageBar extends StatelessWidget {
  const HomePageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Badge(
            badgeColor: Colors.white,
            padding: EdgeInsets.all(0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "menu");
              },
              child: Icon(
                Icons.sort,
                size: 32,
                color: Color(0xFF330433),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Shop",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF330433)),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xFF330433),
              ),
            ),
          )
        ],
      ),
    );
  }
}
