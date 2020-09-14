import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/buttons_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => BasicPage(),
  '/scroll': (context) => ScrollPage(),
  '/buttons': (context) => ButtonsPage()
};
