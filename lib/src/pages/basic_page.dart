import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final subtitleStyle = new TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: AssetImage('assets/images/landscape.jpg'),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical:30 ,horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Landscape', style: titleStyle,),
                    SizedBox(height: 7,),
                    Text('Beautiful Landscape in England', style: subtitleStyle,)
                  ],
                ),
              ),
              Icon(
                Icons.star_border,
                color: Colors.red,
                size: 30,
              ),
              Text('41', style: TextStyle(fontSize: 18),)
            ],
          ),
        )
      ],
    ));
  }
}
