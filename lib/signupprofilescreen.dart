import 'package:flutter/material.dart';
import 'package:signaway_fadwa/Remote_data_source/register.dart';
import 'package:http/http.dart' as http;

import 'Routing/routing.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username;
  String password;
  String confirmPassword;
  String email;
  Register register;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF8C9EFF),
                    Color(0xFF565CCE),
                    //Color(0xFF4527A0),
                    // Colors.white
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 190.0),
                    child: Image.asset(
                      "assets/images/abc.png",
                      height:MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width/2.5
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 180, 20, 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.25,
                      height: 368,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0XFF6E6FD4),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Color(0xFF686EDD),
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(23),
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  onChanged: (value) {
                                    username = value;
                                  },
                                  cursorColor: Color(0xFFFFFFFF),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SFUIDisplay'),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      labelText: 'User Name',
                                      prefixIcon: const Icon(
                                          Icons.person_outline,
                                          color: Color(0xFFFFFFFF)),
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFFFFFFFF))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  cursorColor: Color(0xFFFFFFFF),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SFUIDisplay'),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      labelText: 'Password',
                                      prefixIcon: const Icon(Icons.lock_outline,
                                          color: Color(0xFFFFFFFF)),
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFFFFFFFF))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  onChanged: (value) {
                                    confirmPassword = value;
                                  },
                                  cursorColor: Color(0xFFFFFFFF),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SFUIDisplay'),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      labelText: 'Confirm Password',
                                      prefixIcon: const Icon(Icons.lock_outline,
                                          color: Color(0xFFFFFFFF)),
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFFFFFFFF))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  cursorColor: Color(0xFFFFFFFF),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SFUIDisplay'),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      labelText: 'Email',
                                      prefixIcon: const Icon(
                                          Icons.alternate_email,
                                          color: Color(0xFFFFFFFF)),
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFFFFFFFF))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () async {
                      register = Register(new http.Client());
                      String response = await register(
                          email: email, username: username, password: password);
                      print(response);
                      if (response != "Login isues")

                        Navigator.push(context, new Visitortoprofile(token:response));
                      else {
                        //Alert goes here
                      }
                    }, //
                    textColor: Colors.white,

                    padding: EdgeInsets.fromLTRB(0, 545, 0, 3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Color(0xFF5A4DB7),
                        color: Color(0xFF686EDD),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF858AF3),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Color(0xFF858AF3),
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                      ),
                      padding: const EdgeInsets.fromLTRB(30, 10, 34, 10),
                      child: const Text('Next', style: TextStyle(fontSize: 17)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
