import 'package:flutter/material.dart';

import 'consts.dart';
class CameraHome extends StatefulWidget {
  @override
  _CameraHomeState createState() => _CameraHomeState();
}

class _CameraHomeState extends State<CameraHome> {
  final List<String> listof= ["doc1", "doc2", "doc3","doc4","doc5","doc6","doc7","doc8",  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        backgroundColor: Appcolors.purpleColor,
      ),



      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_, int index) =>listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),

    );
  }
}


// ignore: camel_case_types, must_be_immutable
class listDataItem extends StatelessWidget{
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return new Card (
      elevation: 10.0,

      
      child: new Container(
        margin: EdgeInsets.all(13.0),
        padding: EdgeInsets.all(6.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Image.asset( "assets/images/dw.png")
            ),
            new Padding(padding:EdgeInsets.all(15.0)),
            new Text (itemName, style: TextStyle(fontSize: 20.0),)
            
          ],
        ),
      ),

    );
  }

}

