import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final subtitleStyle = new TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _renderImage(),
          _renderTitle(),
          _renderActions(),
          _renderText(),
          _renderText(),
          _renderText(),
        ],
      ),
    ));
  }

  Widget _renderImage() {
    return Image(
      image: AssetImage('assets/images/landscape.jpg'),
    );
  }

  Widget _renderTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Landscape',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Beautiful Landscape in England',
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star_border,
              color: Colors.red,
              size: 30,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _renderAction(Icons.call, 'Call'),
        _renderAction(Icons.local_airport, 'Route'),
        _renderAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _renderAction(IconData iconData, String nameAction) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          nameAction,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }

  Widget _renderText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
          ' Maecenas vehicula scelerisque nunc, vel ultricies justo. Aenean '
          'luctus sagittis laoreet. Suspendisse vehicula placerat mattis. Quisque '
          'hendrerit tempus arcu, aliquet bibendum neque pretium id. Sed eget vulputate nisi,'
          ' in finibus arcu. Phasellus pharetra ex quis mi pretium malesuada. Donec pulvinar'
          ' neque vitae mollis lobortis. Curabitur lacinia sed massa eu euismod. Nunc fringilla '
          'sapien id varius scelerisque. Donec auctor dignissim ultricies. Vivamus et imperdiet'
          ' neque, sed dictum purus. Aenean porta ante augue, ut scelerisque augue tristique eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
