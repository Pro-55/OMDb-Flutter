import 'package:flutter/material.dart';

class TabletHomeWidget extends StatefulWidget {
  @override
  _TabletHomeWidgetState createState() => _TabletHomeWidgetState();
}

class _TabletHomeWidgetState extends State<TabletHomeWidget> {
  final List<bool> _selections = List.generate(2, (index) => index == 0);

  void updateSelection(int selectedIndex) {
    setState(() {
      _selections.asMap().forEach(
          (index, value) => {_selections[index] = index == selectedIndex});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ColoredBox(
                color: Colors.green,
                child: ToggleButtons(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Icon(Icons.movie),
                    Icon(Icons.tv),
                  ],
                  isSelected: _selections,
                  onPressed: (int index) => updateSelection(index),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ColoredBox(
                color: Colors.blue,
                child: Text('Tablet Body'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
