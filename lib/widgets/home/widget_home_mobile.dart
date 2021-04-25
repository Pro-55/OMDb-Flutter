import 'package:flutter/material.dart';

class MobileHomeWidget extends StatefulWidget {
  @override
  _MobileHomeWidgetState createState() => _MobileHomeWidgetState();
}

class _MobileHomeWidgetState extends State<MobileHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {print('Menu Clicked')},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {print('Search Clicked')},
          ),
        ],
      ),
      body: SafeArea(
        child: ColoredBox(
          color: Colors.blue,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Text('Mobile Body'),
          ),
        ),
      ),
    );
  }
}
