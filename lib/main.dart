import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[100],
        body: Container(
          decoration: BoxDecoration(
            color: Colors.indigo[50],
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.only(top: 35, left: 10, right: 10, bottom: 10),
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SafeArea(
                        child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 50),
                      width: double.infinity,
                      child: Icon(
                        Icons.person_pin,
                        color: Colors.indigo[800],
                        size: 140,
                      ),
                    )),
                    SizedBox(height: 10),
                    Container(
                        margin: EdgeInsets.only(
                            top: 50, left: 10, right: 10, bottom: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: double.infinity,
                        height: 70,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.mail_outline),
                              labelText: "Email Addres",
                              labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                offset: Offset(0, 5),
                              )
                            ])),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                        margin: EdgeInsets.only(
                            top: 0, left: 10, right: 10, bottom: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: double.infinity,
                        height: 70,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock_outline),
                              suffixIcon: Icon(Icons.remove_red_eye_outlined),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                offset: Offset(0, 5),
                              )
                            ])),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      disabledColor: Colors.grey,
                      color: Colors.indigo[800],
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.blueGrey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
