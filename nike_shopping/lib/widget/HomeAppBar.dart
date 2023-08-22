import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 88, 88, 88).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: Icon(Icons.sort,
                size: 30, color: Color.fromARGB(255, 88, 88, 88)),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 88, 88, 88).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: Badge(
              backgroundColor: Colors.red,
              label: Text(
                "3",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  size: 32,
                  color: Color.fromARGB(255, 88, 88, 88),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
