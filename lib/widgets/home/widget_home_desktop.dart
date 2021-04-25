import 'package:flutter/material.dart';

class DesktopHomeWidget extends StatefulWidget {
  @override
  _DesktopHomeWidgetState createState() => _DesktopHomeWidgetState();
}

class _DesktopHomeWidgetState extends State<DesktopHomeWidget> {
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
                    Text('Desktop Item 1'),
                    Text('Desktop Item 2'),
                  ],
                  isSelected: _selections,
                  onPressed: (int index) => updateSelection(index),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ColoredBox(
                color: Colors.blue,
                child: Text('Desktop Body'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
