import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _renderPage1(),
          _renderPage2(),
        ],
      ),
    );
  }

  Widget _renderPage1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _renderTexts(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _renderTexts() {
    final textStyle = new TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 60,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _renderPage2() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        Center(
          child: RaisedButton(
            onPressed: (){},
            child: Text('Click Here', style: TextStyle(color: Colors.white),),
            elevation: 5,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            shape: StadiumBorder(),
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
