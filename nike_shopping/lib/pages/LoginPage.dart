import 'package:flutter/material.dart';
import 'package:nike_shopping/pages/HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  "images/login.png",
                ),
              ),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0XFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0XFF475269),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0XFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Color(0XFF475269),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            color: Colors.white,
                            width: 250,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF475269)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFF475269),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Don't Have Account?",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
