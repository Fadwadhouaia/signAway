import 'package:flutter/material.dart';
import 'package:signaway_fadwa/homehomescreen.dart';
import 'package:signaway_fadwa/homescreen.dart';
import 'package:signaway_fadwa/onboardingscreen.dart';
import 'file:///B:/Fadwa/signaway_fadwa-master/lib/SignaturePad/signaturepage.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignaturePgae(),
      debugShowCheckedModeBanner: false,
    );
  }
}