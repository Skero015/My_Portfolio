
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/pages/desktop/home_page_desktop.dart';
import 'package:portfolio_webapp/utils/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) => [
          const SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
          ),
        ],
        body: ResponsiveLayout(
          desktop: HomePageDesktop(),
        ),
      ),
    );
  }
}
