import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 300,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 70,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/pro.png",
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Text(
                        "Gowtham Kumar",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "gowtham@gmail.com",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xff452eb4),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(top: 50, left: 15, right: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.collections,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'New collections',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.image_rounded,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'Editor\'s Picks',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.pinch,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'Top Deals',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.pink,
                size: 30,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
