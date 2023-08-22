import 'package:flutter/material.dart';
import 'package:nike_shopping/widget/CategoriesPage.dart';
import 'package:nike_shopping/widget/HomeAppBar.dart';
import 'package:nike_shopping/widget/HomeBottomNavBar.dart';
import 'package:nike_shopping/widget/Items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCEDDEE),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeAppBar(),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0XFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 280,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                                hintText: "Search", border: InputBorder.none),
                          ),
                        ),
                        const Icon(
                          Icons.search,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                CategoriesPage(),
                SizedBox(
                  height: 30,
                ),
                Items_widget(),
              ],
            ),
          ],
        )),
      ),
      bottomNavigationBar:HomeBottomNavBar() ,
    );
  }
}
