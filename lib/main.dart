import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio_webapp/pages/desktop/home_page_desktop.dart';
import 'package:portfolio_webapp/utils/responsive_layout.dart';
import 'package:sizer/sizer.dart';
import 'utils/widget_size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Sizer(
              builder: (context, orientation, deviceType) {
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Kamogelo Seima',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  home: ResponsiveLayout(
                    desktop: HomePageDesktop(),
                  ),
                );
              }
          );
        });
  }
}