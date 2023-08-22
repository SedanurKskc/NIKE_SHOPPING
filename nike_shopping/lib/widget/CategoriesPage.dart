import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 180,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF475269).withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0XFF475269),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        "images/$i.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Shoe",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF475269),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Men's Shoe",
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "\$50",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 60,
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
                                  size: 25,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
