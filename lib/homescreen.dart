import 'package:flutter/material.dart';
import 'package:signaway_fadwa/camerascreen.dart';
import 'package:signaway_fadwa/homehomescreen.dart';
import 'package:signaway_fadwa/listehomescreen.dart';
import 'package:signaway_fadwa/upadeteprofilehomescreen.dart';
import 'dart:math' as math;
import 'consts.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget display;
    if (pageIndex == 0) {
      display = HomeHome();
    }
    else if (pageIndex == 1) {
      display = CameraHome();
    }
    else if (pageIndex == 3) {
      display = ListeHome();
    }

    else if (pageIndex == 4) {
      display = UpdateProfileHome();
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          display,
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Appcolors.purpleColor,
        unselectedItemColor: Appcolors.purpleColor.withAlpha(150),
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Liste'),
          ),

          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Container(),
          ),
          BottomNavigationBarItem(
            title: Text("Camera"),
            icon: Icon(Icons.camera),
          ),
          BottomNavigationBarItem(
            title: Text("Profile"),
            icon: Icon(Icons.person),
          ),
        ],
      ),
      floatingActionButton: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Appcolors.purpleColor.withAlpha(150),
                Appcolors.purpleColor
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Icon(
             Icons.home,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}