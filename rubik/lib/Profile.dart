
import 'package:flutter/material.dart';
import 'package:mikirubik/HomeScreen.dart';
import 'dart:ui' as ui;

import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _launchURL5() async {
    const url = 'https://www.youtube.com/watch?v=lrRmQxWgJM8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  @override

  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = 'https://pixel.nymag.com/imgs/daily/selectall/2017/12/26/26-eric-schmidt.w700.h700.jpg';

    return new Stack(children: <Widget>[
      new Container(color: Colors.blue,),
      new BackdropFilter(
          filter: new ui.ImageFilter.blur(
            sigmaX: 6.0,
            sigmaY: 6.0,
          ),
          child: new Container(
            decoration: BoxDecoration(
              color:  Colors.blue.withOpacity(0.9),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),)),
      new Scaffold(
          appBar: new AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text('Profile'),
                new Image.asset('assets/logo.png',width: 60,),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: new Center(
            child: new Column(
              children: <Widget>[
                new SizedBox(height: _height/12,),

                new CircleAvatar(radius:_width<_height? _width/4:_height/4,backgroundImage: AssetImage('assets/profile.jpeg'),),
                new SizedBox(height: _height/25.0,),
                new Text('Vincent Julindra Jacob', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: _width/15, color: Colors.white),),
                new Padding(padding: new EdgeInsets.only(top: _height/30, left: _width/8, right: _width/8),
                  child:new Text('Teknik Informatika 2017\nUniversitas Matana, Tangerang',
                    style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/25,color: Colors.white),textAlign: TextAlign.center,) ,),
                new Divider(height: _height/30,color: Colors.white,),
                new Text('Dosen : Ary Budi Warsito S.Komp ., M.Kom.',
                    style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/25,color: Colors.white),textAlign: TextAlign.center,) ,
                new Divider(height: _height/30,color: Colors.white),
                new RaisedButton(
                padding: const EdgeInsets.all(8.0),
                onPressed: _launchURL5,
                color: Colors.red,
                child: new Text("Lihat Video Vincent Bermain Rubik", style: new TextStyle(color: Colors.white),
                ),
                ),
              ],
            ),
          )
      )
    ],);
  }

  Widget rowCell(int count, String type) => new Expanded(child: new Column(children: <Widget>[
    new Text('$count',style: new TextStyle(color: Colors.white),),
    new Text(type,style: new TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
  ],));
}