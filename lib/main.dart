import 'package:flutter/material.dart';
import 'package:flutter_designs/src/routes/routes.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: routes,
  ));
}