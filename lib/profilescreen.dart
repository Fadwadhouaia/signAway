import 'package:flutter/material.dart';

import 'Routing/routing.dart';

class Profile extends StatefulWidget {
  final String token;

  const Profile({Key key, @required this.token}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String firsrName;
  String lastName;
  String adress;
  String cin;
  String token;

  @override
  Widget build(BuildContext context) {
    token = widget.token;
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
                      height: 200,
                      width: 300,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 200, 20, 20),
                    child: Container(
                      width: 350,
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
                                    firsrName = value;
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
                                      labelText: 'First Name',
                                      prefixIcon: const Icon(Icons.face,
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
                                    lastName = value;
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
                                      labelText: 'Last Name',
                                      prefixIcon: const Icon(Icons.face,
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
                                  onChanged: (value){
                                    adress = value;
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
                                      labelText: 'Adress',
                                      prefixIcon: const Icon(Icons.business,
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
                                  onChanged: (value){
                                    cin = value;
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
                                      labelText: 'CIN',
                                      prefixIcon: const Icon(
                                          Icons.confirmation_number,
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
                    onPressed: () {
                      Navigator.push(context, new ProfileToSignup2(token:token,firsrName:firsrName,lastName:lastName,adress:adress,cin:cin));
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
                              color: Color(0xFF868CF4),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Color(0xFF868CF4),
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
