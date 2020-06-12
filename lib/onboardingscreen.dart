import 'package:flutter/material.dart';
import 'package:signaway_fadwa/Routing/routing.dart';
import 'package:signaway_fadwa/page_indicator.dart';

import 'onboardingoutils.dart';
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>

 with TickerProviderStateMixin{
  PageController _controller;
  int currentPage =0;
  bool lastPage = false;
  AnimationController animationController;
  Animation<double> _scaleAnimation;

  void initState(){
    super.initState();
    _controller = PageController(
      initialPage: currentPage,
    );
    animationController = AnimationController(
      duration: Duration(microseconds: 300),vsync: this);
    _scaleAnimation= Tween(begin: 0.6, end: 1.0).animate(animationController);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF8C9EFF),
            Color(0xFF4527A0),
          ],
          tileMode: TileMode.clamp,
          begin: Alignment.topLeft,
          stops: [0.0,1.0],
          end: Alignment.bottomRight,

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
                itemCount: pageList.length,
              controller: _controller,
              onPageChanged: (index){
                  setState(() {
                    currentPage = index;
                    if(currentPage == pageList.length -1){
                      lastPage = true;
                      animationController.forward();

                    }
                    else{
                      lastPage = false;
                      animationController.reset();
                    }

                  });
              },
              itemBuilder: (context, index){
                  return AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child){
                      var page = pageList[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Center(
                            child: Column(
                              children: <Widget>[
                                Image.asset(page.image),
                                Container(
                                  margin: EdgeInsets.only(top: 15.0, left: 12.0),
                                  height: 100.0,
                                  child: Stack(children: <Widget>[
                                    Text(page.title, style: TextStyle(color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),)
                                  ],),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0.0),
                                  child: Text(page.text, style: TextStyle(color: Colors.white,
                                  fontSize: 20.0),),
                                ),

                              ]
                            )
                          )
                        ],
                      );
                    },
                  );
              },
        ),
            Positioned(
              left: 30.0,
              bottom: 38.0,
              child: Container(
                width: 210.0,
                  child: PageIndicator(currentPage, pageList.length)
              ),
            ),

            Positioned(
              right: 30.0,
              bottom: 30.0,
              child: ScaleTransition(
                scale: _scaleAnimation,
                  child:lastPage ? FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF8C9EFF),
                    ),
                    onPressed:() {


                      Navigator.push(context, new OnboardingToLogin());
                    },
                  )
                      : Container(),
              ),
            ),
      ],
    ),
    ),
    );
  }
}
