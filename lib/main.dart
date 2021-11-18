import 'package:flutter/material.dart';
import 'package:flutter_application_maps/app/ui/pages/home/home_page.dart';

void main() {
  runApp(const AppMaps());
}

class AppMaps extends StatelessWidget {
  const AppMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telo llevo sv',
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
