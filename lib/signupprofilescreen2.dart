import 'package:flutter/material.dart';
import 'package:signaway_fadwa/Remote_data_source/profileEdit.dart';
import 'package:signaway_fadwa/Routing/routing.dart';
import 'package:http/http.dart' as http;

class LastSignUp extends StatefulWidget {
  final String adress;
  final String cin;
  final String firsrName;
  final String lastName;
  final String token;

  const LastSignUp(
      {Key key,
      @required this.adress,
      @required this.cin,
      @required this.firsrName,
      @required this.lastName,
      @required this.token})
      : super(key: key);
  @override
  _LastSignUpState createState() => _LastSignUpState();
}

class _LastSignUpState extends State<LastSignUp> {
  String adress;
  String cin;
  String firsrName;
  String lastName;
  String job;
  String dateOfBirth;
  String bank;
  String assurance;
  String token;

  ProfileEdit profileEdit;
  @override
  Widget build(BuildContext context) {
    print(widget.token);
    firsrName = widget.firsrName;
    lastName = widget.lastName;
    adress = widget.adress;
    cin = widget.cin;
    token = widget.token;

print("firstname : " + firsrName);
print("lastName : " + lastName);
print("adress : " + adress);
print("cin : " + cin);

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
                      width: MediaQuery.of(context).size.height/2,
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
                                    job = value;
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
                                      labelText: 'Job',
                                      prefixIcon: const Icon(
                                          Icons.business_center,
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
                                    dateOfBirth = value;
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
                                      labelText: 'Day Of Birth',
                                      prefixIcon: const Icon(Icons.cake,
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
                                    bank = value;
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
                                      labelText: 'Bank',
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
                                  onChanged: (value) {
                                    assurance = value;
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
                                      labelText: 'Assurance',
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
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    height: 50,
                    onPressed: () async {
                      profileEdit = ProfileEdit(new http.Client());
                      String response = await profileEdit(
                          token: token,
                          location: adress,
                          firstNmae: firsrName,
                          bank: bank,
                          cin: cin,
                          dateOfBirth: dateOfBirth,
                          lastName: lastName,
                          assurance: assurance,
                          job: job,
                          phonenumber: "998988999");
                      print(response);
                      Navigator.push(context, new LoginToHome());
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
