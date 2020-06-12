import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:signaway_fadwa/Routing/routing.dart';

import 'Remote_data_source/login.dart';



class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {





  String username;
  Login login;
  String password;
  @override
  Widget build(BuildContext context) {
 Login login = Login();
    return Scaffold(

      body: ListView(


        children: <Widget>[

          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF8C9EFF),
                        Color(0xFF565CCE),
                        //Color(0xFF4527A0),
                       // Colors.white
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),

              ),
              Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill
                    )
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 190.0),
                    child: Image.asset("assets/images/abc.png",
                      height:MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width/2.5,) ,

                  ),

                ],

              ),


              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 200, 20, 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.25,
                      height: 206,
                      decoration:  BoxDecoration(

                        color: Colors.white10,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color:Color(0XFF6E6FD4),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0
                          ),
                          BoxShadow(
                              color:  Color(0xFF686EDD),
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0

                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:10.0),
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  cursorColor: Color(0xFFFFFFFF),
                                  onChanged: (value){
                                  username = value;
                                  print(value);
                                  },
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'SFUIDisplay'),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white,)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white,),
                                      ),
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      labelText: 'User Name',
                                      prefixIcon: const Icon(Icons.person_outline,
                                          color:   Color(0xFFFFFFFF)),
                                      labelStyle:
                                      TextStyle(fontSize: 13, color: Color(0xFFFFFFFF))),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 3, 20, 3),
                              color: Colors.transparent,
                              child: TextFormField(
                                onChanged: (value){
                                  password = value;
                                  print(value);
                                },
                                obscureText: true,
                                style: TextStyle(
                                    color:  Color(0xFFFFFFFF),
                                    fontFamily: 'SFUIDisplay'
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white,)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white,),
                                    ),
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.white,
                                    labelText: 'Password',
                                    prefixIcon: const Icon(Icons.lock_outline,
                                        color:   Color(0xFFFFFFFF)),
                                    labelStyle:
                                    TextStyle(fontSize: 13, color: Color(0xFFFFFFFF))),
                              ),
                            ),




                          ],

                        ),

                      ),
                    ),
                  )],
              ),
              Positioned(
               top: 380,
                left: 150,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(

                      onPressed: () async{
                        String response = await login(password:password,username:username);
                        print(response);
                        if(response != "Login isues")
                        Navigator.push(context, new LoginToHome());
                        else {
                          ///alert goes here 
                        }
                      }, 
                      textColor: Colors.white,

                      padding: const EdgeInsets.all(0.0),
                      elevation: 5.0,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      child: Container(

                        decoration:  BoxDecoration(

                           //color: Color(0xFF5A4DB7),
                           color:  Color(0xFF686EDD),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFF868CF4),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0
                            ),
                            BoxShadow(
                                color: Color(0xFF868CF4),
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0

                            ),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(30, 10, 34, 10),
                        child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 17 )
                        ),
                      ),
                      

                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 450),
                child: Center(
                  child: Text('Forgot your password?',
                    style: TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 490),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                fontFamily: 'SFUIDisplay',
                                color: Colors.black,
                                fontSize: 15,
                              )
                          ),
                          TextSpan(
                              recognizer: new TapGestureRecognizer()..onTap = () =>  Navigator.push(context, new Signintosignup()),
                              text: "sign up",
                              style: TextStyle(
                                fontFamily: 'SFUIDisplay',
                                color: Colors.white,
                                fontSize: 15,
                              )
                          )
                        ]
                    ),
                  ),
                ),
              )

            ],

          ),

        ],




      ),



    );
  }


}
