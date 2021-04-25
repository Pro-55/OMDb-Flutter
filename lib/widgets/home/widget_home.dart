import 'package:flutter/material.dart';
import 'package:omdb_flutter/widgets/home/widget_home_desktop.dart';
import 'package:omdb_flutter/widgets/home/widget_home_mobile.dart';
import 'package:omdb_flutter/widgets/home/widget_home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      watch: Text('Watch'),
      mobile: MobileHomeWidget(),
      tablet: TabletHomeWidget(),
      desktop: DesktopHomeWidget(),
    );
  }
}
