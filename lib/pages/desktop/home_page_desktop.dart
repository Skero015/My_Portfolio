
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:portfolio_webapp/widgets/custom_button.dart';
import 'package:portfolio_webapp/widgets/resume.dart';
import 'package:portfolio_webapp/widgets/summary_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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

  List<Widget> widgetList = [Resume(),];

  late bool resumeHovered = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
    return Scaffold(
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
                  Text('Kamogelo Seima', style: AppThemeWeb.name, overflow: TextOverflow.clip,),
                  const SizedBox(width: 10,),
                  Expanded(child: Text('/SOFTWARE DEVELOPER', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,)),
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
                        Text('Kamogelo Seima', style: AppThemeWeb.name, overflow: TextOverflow.clip,),
                        const SizedBox(width: 10,),
                      ],
                    ),
                    Expanded(child: Text('/SOFTWARE DEVELOPER', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,)),
                  ],
                ),
              ),
            ),
            actions: [
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      itemScrollController.scrollTo(index: 0, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                    });
                  },
                  onHover: (hovered) {

                    setState(() {
                      hovered ? resumeHovered = true : resumeHovered = false;
                    });

                  },
                child: Text('RESUME', style: resumeHovered ? AppThemeWeb.regularTextHovered: AppThemeWeb.regularText, overflow: TextOverflow.clip,),),
              ),
              const SizedBox(width: 40,),
              Center(
                child: GestureDetector(
                  onTap: () {
                    itemScrollController.scrollTo(index: 1, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                  },
                  child: Text('PROJECTS', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                ),
              ),
              const SizedBox(width: 40,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      itemScrollController.scrollTo(index: 2, duration: const Duration(seconds: 1), curve: Curves.bounceInOut);
                    },
                    child: Text('CONTACT', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
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
              child: Container(
                color: Colors.white,
                height: 2800,
                child: Column(
                  children: [
                    //main container after appbar
                    Row(//row with two containers in the main container body
                      children: [
                        Container(// container on the right
                          color: Colors.white,
                          height: 820,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Stack(// stack with two containers stacked on each other
                            children: [
                              Container(
                                color: const Color(0xFFE8DED1),
                                height: 860,
                                width: 750,
                              ),
                              SummaryCard(),
                            ],
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            height: 820,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 220.0, left: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  Text('Hello', style: AppThemeWeb.hello, overflow: TextOverflow.clip,),
                                  const SizedBox(height: 5,),
                                  Text('I am Kamogelo Seima!', style: AppThemeWeb.subheading, overflow: TextOverflow.clip,),
                                  const SizedBox(height: 40,),
                                  Row(
                                    children: [
                                      CustomButton(
                                        onPressed: () {

                                        },
                                        buttonText: 'RESUME',
                                        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                      ),
                                      const SizedBox(width: 20,),
                                      CustomButton(
                                        onPressed: () {

                                        },
                                        buttonText: 'PROJECTS',
                                        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40,),
                                  DefaultTextStyle(
                                    style: AppThemeWeb.regularText,
                                    overflow: TextOverflow.visible,
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          'I am a Software Developer,\nspecializing in cross-platform development.\n\nWelcome to my portfolio.',
                                          speed: const Duration(milliseconds: 100),
                                          textStyle: AppThemeWeb.regularText,
                                        ),
                                      ],

                                    ),
                                  ),
                                  //Expanded(child: Text('I am a Software Developer, specializing in cross-platform mobile development.', style: AppThemeWeb.regularText, overflow: TextOverflow.visible,)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.person, size: 30, color: Colors.blue,),
                        const SizedBox(width: 15,),
                        Text('ABOUT ME', style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    AnimateIfVisible(
                      key: Key('item.1'),
                      duration: Duration(milliseconds: 500),
                      builder: (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: Container(
                            width: constraints.maxWidth / 1.3,
                            color: AppThemeWeb.mainColor,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Text(Constants.intro, style: AppThemeWeb.regularTextLight, overflow: TextOverflow.clip,),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 60,),
                    SizedBox(
                      height: 1600,
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
      ),
    );
  });
  }
}
