import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shopping/pages/DetailsPage.dart';

class Items_widget extends StatelessWidget {
  const Items_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.65, //boyunu belirler
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: Container(
                    child: Image.asset("images/$i.png"),
                  ),
                ),
                Text(
                  "Nike Shoe",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF475269),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "New Nike Shoe For Men",
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$55",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0XFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        CupertinoIcons.cart_fill_badge_plus,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
