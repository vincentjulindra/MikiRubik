import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=HiE8RW7IeMs&list=PLVJ8OxhNb90RkA3Q4S9mejYkCrCtupMsg';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=0fTro6zXdwY&list=PLVJ8OxhNb90RkA3Q4S9mejYkCrCtupMsg&index=2';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=4D-HM5xpYUY&list=PLVJ8OxhNb90RkA3Q4S9mejYkCrCtupMsg&index=3';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=hNYcLl0dzSI&list=PLVJ8OxhNb90RkA3Q4S9mejYkCrCtupMsg&index=4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL5() async {
    const url = 'https://www.youtube.com/watch?v=JpozqQPeSWc&list=PLVJ8OxhNb90RkA3Q4S9mejYkCrCtupMsg&index=5';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text('Tutorial Rubik'),
            new Image.asset('assets/logo.png',width: 60,),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: (){
                  _launchURL();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/tutor1.jpeg")), ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL2();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/tutor2.jpeg")), ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                  _launchURL3();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/tutor3.jpeg")), ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                  _launchURL4();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/tutor4.jpeg")), ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL5();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/tutor5.jpeg")), ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}