import 'package:flutter/material.dart';
import 'ui/movie_list.dart';
import 'ui/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(child: HomePage()),
      ),
    );
  }
}
