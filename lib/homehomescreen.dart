import 'package:flutter/material.dart';
import 'package:signaway_fadwa/Routing/routing.dart';
import 'package:signaway_fadwa/widgets/colors.dart';
import 'package:signaway_fadwa/widgets/profile_info_big_card.dart';
import 'consts.dart';







class HomeHome extends StatefulWidget {


  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {






  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Stack(
              alignment: AlignmentDirectional.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                _backBgCover(),

                _moodsHolder()

              ],
            ),


            Container(
              margin: EdgeInsets.only(top: 20, left: 15,right: 15),
              decoration: BoxDecoration(

              ),



            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 15,right: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color:Color(0xFFE6E6E6),
                  ),
                ],
              ),

              child: Row(
                children: <Widget>[

                  SizedBox(width:20),
                  Expanded(

                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToSignature());
                      },
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Ajouter/ Modifier une signature",
                            // ignore: deprecated_member_use
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          //Text("Start your deepen you practice")
                        ],
                      ),
                    ),

                  ),

                ],
              ),
            ),


            Container(

              margin: EdgeInsets.only(top: 30, left: 15,right: 15),

              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color:Color(0xFFE6E6E6),
                  ),
                ],
              ),
              child: Row(

                children: <Widget>[

                  SizedBox(width: 20),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToFingerprint());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Text(
                            "Signer un document",
                            // ignore: deprecated_member_use
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          //Text("Start your deepen you practice")
                        ],
                      ),
                  ),

                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

  Positioned _moodsHolder() {
   return Positioned(

      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 75, left: 20, right: 20),
          child: Table(

            children: [
              TableRow(
                children: [
                  Container(
                    child:InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToSignature());
                      },

                      child:  ProfileInfoBigCard(
                        firstText: "Galerie",

                        icon: Image.asset(
                          "assets/images/3.png",
                          width: 20,

                          color: blueColor,
                        ),
                      ),

                    ),
                  ),
                  Container(
                    child:InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToSignature());
                      },

                      child:   ProfileInfoBigCard(
                        firstText: "Documents signés",
                        //secondText: "Importer des fichiers",
                        icon: Image.asset(
                          "assets/images/3.png",
                          width: 20,
                          height: 20,
                          color: blueColor,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    child:InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToSignature());
                      },

                      child:  ProfileInfoBigCard(
                        firstText: "Documents en attente",
                        icon: Image.asset(
                          "assets/images/3.png",
                          width: 20,
                          height: 20,

                          color: blueColor,
                        ),
                      ),

                    ),
                  ),
                  Container(
                    child:InkWell(
                      onTap: () {
                        Navigator.push(context, new HomeToSignature());
                      },

                      child: ProfileInfoBigCard(
                        firstText: "Drive",
                        // secondText: "All matches",
                        icon: Image.asset(
                          "assets/images/3.png",
                          width: 20,
                          color: blueColor,
                        ),
                      ),

                    ),
                  ),
                ],
              ),

            ],
          ),



        ),

      ),
    );
   }


  Container _backBgCover() {

    return Container(
      height: 150.0,
      decoration: BoxDecoration(

        gradient: LinearGradient(
          colors: [
            Appcolors.purpleColor.withAlpha(150),
            Appcolors.purpleColor
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
    );
  }











}