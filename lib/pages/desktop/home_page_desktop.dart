
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:portfolio_webapp/widgets/custom_button.dart';
import 'package:portfolio_webapp/widgets/summary_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePageDesktop extends StatefulWidget {
  HomePageDesktop({Key? key}) : super(key: key);

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
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
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  const Icon(Icons.code, color: Colors.blueAccent, size: 40,),
                  const SizedBox(width: 5,),
                  Text('Kamogelo Seima', style: AppThemeWeb.name, overflow: TextOverflow.clip,),
                  const SizedBox(width: 10,),
                  Text('/SOFTWARE DEVELOPER', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                ],
              ),
            ),
            actions: [
              Center(child: Text('RESUME', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,)),
              const SizedBox(width: 40,),
              Center(child: Text('PROJECTS', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,)),
              const SizedBox(width: 40,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text('CONTACT', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                ),
              ),
              const SizedBox(width: 15,),
            ],
            toolbarHeight: 130,
          ),
        ],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              color: Colors.white,
              height: 1000,
              child: Column(
                children: [
                  //main container after appbar
                  Row(//row with two containers in the main container body
                    children: [
                      Container(// container on the right
                        color: Colors.white,
                        height: 820,
                        width: 900,
                        child: Stack(// stack with two containers stacked on each other
                          children: [
                            Container(
                              color: Color(0xFFE8DED1),
                              height: 860,
                              width: 750,
                            ),
                            SummaryCard(),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 820,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 220.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5,),
                              Text('Hello', style: AppThemeWeb.hello, overflow: TextOverflow.clip,),
                              const SizedBox(height: 5,),
                              Text('I am Kamogelo Seima, aka Skero!', style: AppThemeWeb.subheading, overflow: TextOverflow.clip,),
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
                                      speed: Duration(milliseconds: 100),
                                      textStyle: AppThemeWeb.regularText,
                                    ),
                                  ],

                                ),
                              ),
                              //Expanded(child: Text('I am a Software Developer, specializing in cross-platform mobile development.', style: AppThemeWeb.regularText, overflow: TextOverflow.visible,)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
