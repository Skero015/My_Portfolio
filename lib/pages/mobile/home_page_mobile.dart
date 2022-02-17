
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/styleguide_mobile.dart';
import 'package:portfolio_webapp/widgets/contact.dart';
import 'package:portfolio_webapp/widgets/landing.dart';
import 'package:portfolio_webapp/widgets/portfolio.dart';
import 'package:portfolio_webapp/widgets/resume.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:auto_animated/auto_animated.dart';

class HomePageDesktop extends StatefulWidget {
  HomePageDesktop({Key? key}) : super(key: key);

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  List<Widget> widgetList = [const Landing(), const Resume(),const Portfolio(), const ContactMe()];

  late bool resumeHovered = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, isScrolled) => [
                SliverAppBar(
                  floating: true,
                  backgroundColor: Colors.white,
                  leadingWidth: 520,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: constraints.maxWidth > 1187 ? Row(
                      children: [
                        const SizedBox(width: 10,),
                        const Icon(Icons.code, color: Colors.blueAccent, size: 40,),
                        const SizedBox(width: 5,),
                        Text('Kamogelo Seima', style: AppThemeMobile.name, overflow: TextOverflow.clip,),
                        const SizedBox(width: 10,),
                        Expanded(child: Text('/SOFTWARE DEVELOPER', style: AppThemeMobile.regularText, overflow: TextOverflow.clip,)),
                      ],
                    ): Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              const Icon(Icons.code, color: Colors.blueAccent, size: 40,),
                              const SizedBox(width: 5,),
                              Text('Kamogelo Seima', style: AppThemeMobile.name, overflow: TextOverflow.clip,),
                              const SizedBox(width: 10,),
                            ],
                          ),
                          Expanded(child: Text('/SOFTWARE DEVELOPER', style: AppThemeMobile.regularText, overflow: TextOverflow.clip,)),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    Center(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            itemScrollController.scrollTo(index: 1, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                          });
                        },
                        onHover: (hovered) {

                          setState(() {
                            hovered ? resumeHovered = true : resumeHovered = false;
                          });

                        },
                        child: Text('RESUME', style: resumeHovered ? AppThemeMobile.regularTextHovered: AppThemeMobile.regularText, overflow: TextOverflow.clip,),),
                    ),
                    const SizedBox(width: 40,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          itemScrollController.scrollTo(index: 2, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                        },
                        child: Text('PROJECTS', style: AppThemeMobile.regularText, overflow: TextOverflow.clip,),
                      ),
                    ),
                    const SizedBox(width: 40,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            itemScrollController.scrollTo(index: 3, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                          },
                          child: Text('CONTACT', style: AppThemeMobile.regularText, overflow: TextOverflow.clip,),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                  ],
                  toolbarHeight: 130,
                ),
              ],
              body: AnimateIfVisibleWrapper(
                // Show each item through (default 250)
                showItemInterval: const Duration(milliseconds: 150),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Flex(
                      mainAxisSize: MainAxisSize.min,
                      direction: Axis.vertical,
                      children: [
                        //main container after appbar
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 4,
                          child: ScrollablePositionedList.builder(
                            itemScrollController: itemScrollController,
                            itemCount: widgetList.length,
                            itemBuilder: (context, index) {
                              return widgetList[index];
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
