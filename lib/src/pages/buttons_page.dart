import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _renderTitles(),
                  _renderRoundedButtons(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.5),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ])),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 96, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[gradient, Positioned(top: -100, child: pinkBox)],
    );
  }

  Widget _renderTitles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Clisify transaction into particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30,),
            title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30,),
              title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30,),
              title: Container()
          ),
        ],
      ),
    );
  }

  Widget _renderRoundedButtons(){
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            _renderRoundedButton(Colors.blue,Icons.swap_calls,'Call'),
            _renderRoundedButton(Colors.amber,Icons.calendar_today,'Calendar'),
          ]
        ),
        TableRow(
            children: <Widget>[
              _renderRoundedButton(Colors.red,Icons.bubble_chart,'Chart'),
              _renderRoundedButton(Colors.lightBlueAccent,Icons.gradient,'Gradient'),
            ]
        ),
        TableRow(
            children: <Widget>[
              _renderRoundedButton(Colors.cyan,Icons.share,'Share'),
              _renderRoundedButton(Colors.green,Icons.http,'Conection'),
            ]
        ), TableRow(
            children: <Widget>[
              _renderRoundedButton(Colors.purpleAccent,Icons.multiline_chart,'Multiline'),
              _renderRoundedButton(Colors.blueAccent,Icons.star_border,'Start'),
            ]
        )
      ],
    );
  }

  Widget _renderRoundedButton(Color color, IconData iconData, String title){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 35,
                backgroundColor: color,
                child: Icon(iconData, color: Colors.white,size: 30,),
              ),
              SizedBox(height: 20,),
              Text(title, style: TextStyle(color: color),)
            ],
          ),
        ),
      ),
    );
  }
}
