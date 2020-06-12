
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:signaway_fadwa/SignaturePad/signaturepage.dart';
import 'package:signaway_fadwa/SignaturePad/signaturepagetwo.dart';
import 'package:signaway_fadwa/fingerprint.dart';
import 'package:signaway_fadwa/loginscreen.dart';
import 'package:signaway_fadwa/signupprofilescreen2.dart';
import '../homescreen.dart';
import '../profilescreen.dart';
import '../signupprofilescreen.dart';

class LoginToHome extends MaterialPageRoute<Null> {
  LoginToHome()
      : super(builder: (BuildContext ctx) {
    return new HomeScreen();
  });
}


class OnboardingToLogin extends MaterialPageRoute<Null> {
  OnboardingToLogin()
      : super(builder: (BuildContext ctx) {
    return new LoginScreen();
  });
}

class Signintosignup extends MaterialPageRoute<Null> {
  Signintosignup()
      : super(builder: (BuildContext ctx) {
    return new SignUp();
  });
}


class Visitortoprofile extends MaterialPageRoute<Null> {
  final String token;
  
  Visitortoprofile({@required this.token})
      : super(builder: (BuildContext ctx) {
    return new Profile(token:token);
  });
}


class ProfileToSignup2 extends MaterialPageRoute<Null> {
  ProfileToSignup2({String adress, String cin, String firsrName, String lastName, String token})
      : super(builder: (BuildContext ctx) {
    return new LastSignUp( adress:adress,  cin:cin,  firsrName:firsrName,  lastName:lastName,  token:token);
  });
}


class HomeToSignature extends MaterialPageRoute<Null> {
  HomeToSignature()
      : super(builder: (BuildContext ctx) {
    return new SignaturePgae();
  });
}

class HomeToFingerprint extends MaterialPageRoute<Null> {
  HomeToFingerprint()
      : super(builder: (BuildContext ctx) {
    return new Fingerprint();
  });
}

class SignatureOneToSignatureTwo extends MaterialPageRoute<Null> {
  SignatureOneToSignatureTwo()
      : super(builder: (BuildContext ctx) {
    return new SignaturePgaeTwo();
  });
}