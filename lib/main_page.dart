import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  get child => null;

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  Color firstPallet = const Color(0xFF7CB342);
  Color secondPallet = const Color(0xFF81D4FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getBigDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [firstPallet, secondPallet],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
              )),
          Positioned(
            right: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [firstPallet, secondPallet],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight))),
          ),
          Positioned(
            right: getBigDiameter(context) / 4,
            top: getBigDiameter(context) / 4,
            child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [firstPallet, secondPallet],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight))),
          ),
          Positioned(
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [firstPallet, secondPallet],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.fromLTRB(20, 350, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: secondPallet,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: firstPallet)),
                            labelText: "Email",
                            labelStyle: TextStyle(color: firstPallet)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: secondPallet,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: secondPallet)),
                            labelText: "Password",
                            labelStyle: TextStyle(color: firstPallet)),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: firstPallet,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(120, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () => {},
                              child: const Center(
                                child: Text('Sign-In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [firstPallet, secondPallet],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Dont Have A account?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Sign-Up",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
