import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsBottomBar extends StatelessWidget {
  const DetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
                color: Color(0XFF475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0XFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Text(
                  "Add To Cart",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              decoration: BoxDecoration(
                  color: Color(0XFF475269),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
    );
  }
}
