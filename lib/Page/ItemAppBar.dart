import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xFF330433),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Product",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xFF330433),
          ),
          ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ]),
            child: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
