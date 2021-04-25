import 'package:flutter/material.dart';
import 'package:omdb_flutter/widgets/home/widget_home.dart';
import 'package:omdb_flutter/widgets/providers/provider_selections.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMDb',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Melno'),
      ),
      home: HomeWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
