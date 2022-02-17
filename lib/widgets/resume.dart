
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/models/Skill.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:portfolio_webapp/widgets/horizontal_chart.dart';
import 'package:portfolio_webapp/widgets/pie_chart.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:portfolio_webapp/widgets/skills_container.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  final elevation = 3.0;

  _getLanguageSeriesData() {
    List<charts.Series<Skill, String>> series = [
      charts.Series(
          id: "Languages",
          data: Constants.languageSkills,
          domainFn: (Skill series, _) => series.skillName,
          measureFn: (Skill series, _) => series.skillLevel,
          colorFn: (Skill series, _) => series.barColor
      )
    ];
    return series;
  }

  _getFrameworkSeriesData() {
    List<charts.Series<Skill, String>> series = [
      charts.Series(
          id: "Frameworks",
          data: Constants.frameworkSkills,
          labelAccessorFn: (Skill series, _) => series.skillName,
          domainFn: (Skill series, _) => series.skillName,
          measureFn: (Skill series, _) => series.skillLevel,
          colorFn: (Skill series, _) => series.barColor
      )
    ];
    return series;
  }

  _getDatabaseSeriesData() {
    List<charts.Series<Skill, String>> series = [
      charts.Series(
          id: "Databases",
          data: Constants.databaseSkills,
          labelAccessorFn: (Skill series, _) => series.skillName,
          domainFn: (Skill series, _) => series.skillName,
          measureFn: (Skill series, _) => series.skillLevel,
          colorFn: (Skill series, _) => series.barColor
      )
    ];
    return series;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnimateIfVisibleWrapper(
          // Show each item through (default 250)
          showItemInterval: const Duration(milliseconds: 150),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person_outline, size: 30, color: Colors.blue,),
                  const SizedBox(width: 15,),
                  Text('ABOUT ME', style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
                ],
              ),
              const SizedBox(height: 40,),
              AnimateIfVisible(
                key: Key('item.1'),
                duration: const Duration(milliseconds: 500),
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
                        child: Material(
                          elevation: 5.0,
                          child: Container(
                              padding: const EdgeInsets.all(30.0),
                              color: AppThemeWeb.secondaryColor,
                              child: Text(Constants.intro, style: AppThemeWeb.regularTextLight, overflow: TextOverflow.clip,)
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 60,),
              SizedBox(
                height: 250,
                width: constraints.maxWidth,
                child: LiveList.options(// change to LiveGrid
                  options: const LiveOptions(
                    delay: Duration(milliseconds: 500),
                    showItemInterval: Duration(milliseconds: 500),
                    showItemDuration: Duration(seconds: 1),
                    visibleFraction: 0.05,

                  ),
                  padding: EdgeInsets.only(left: (constraints.maxWidth / 5), right: (constraints.maxWidth / 5)),
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.stages.length,
                  // Like ListView.builder, but also includes animation property
                  itemBuilder: (context, index, animation) {
                    return FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      // And slide transition
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, -0.1),
                          end: Offset.zero,
                        ).animate(animation),
                        // Paste you Widget
                        child: stages (Constants.stages[index].title, Constants.stages[index].icon, Constants.stages[index].description),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(// container on the right
                    color: Colors.white,
                    height: 500,
                    width: constraints.maxWidth / 3.1,
                    child: Stack(// stack with two containers stacked on each other
                      children: [
                        Container(
                          color: const Color(0xFFE8DED1),
                          height: 500,
                          width: 480,
                        ),
                        const SkillsContainer(),
                      ],
                    ),
                  ),
                  pieChart(_getFrameworkSeriesData),
                  Container(// container on the right
                    color: Colors.white,
                    height: 500,
                    width: constraints.maxWidth / 3.1,
                    child: Stack(// stack with two containers stacked on each other
                      children: [
                        Container(
                          color: const Color(0xFFE8DED1),
                          height: 500,
                          width: 480,
                        ),
                        const SkillsContainer(),
                      ],
                    ),
                  ),
                ],
              ),
              /*SizedBox(
                height: 600,
                width: constraints.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: constraints.maxWidth / 10.5,
                        bottom: 0,
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              height: 303,
                              width: 450,
                              duration: const Duration(milliseconds: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.grey.shade50,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 0.0,
                                      blurRadius: elevation,
                                      offset: const Offset(3.0, 3.0)),
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 0.0,
                                      blurRadius: elevation / 2.0,
                                      offset: const Offset(3.0, 3.0)),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2.0,
                                      blurRadius: elevation,
                                      offset: const Offset(-3.0, -3.0)),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2.0,
                                      blurRadius: elevation / 2,
                                      offset: const Offset(-3.0, -3.0)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: horizontalChart(_getLanguageSeriesData),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: constraints.maxWidth / 2.30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.settings_applications, size: 30, color: Colors.blue,),
                            const SizedBox(width: 15,),
                            Text('SKILLS', style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: constraints.maxWidth / 2.30,
                        right: 0,
                        bottom: 0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0, bottom: 20),
                              child: Container(
                                color: AppThemeWeb.mainColor,
                                height: 200,
                                width: 200,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: pieChart(_getFrameworkSeriesData),
                            ),

                            //pieChart(_getFrameworkSeriesData),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: constraints.maxWidth / 1.6,
                        right: 0,
                        bottom: 0,
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              height: 303,
                              width: 450,
                              duration: const Duration(milliseconds: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.grey.shade50,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 0.0,
                                      blurRadius: elevation,
                                      offset: const Offset(3.0, 3.0)),
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 0.0,
                                      blurRadius: elevation / 2.0,
                                      offset: const Offset(3.0, 3.0)),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2.0,
                                      blurRadius: elevation,
                                      offset: const Offset(-3.0, -3.0)),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2.0,
                                      blurRadius: elevation / 2,
                                      offset: const Offset(-3.0, -3.0)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: horizontalChart(_getDatabaseSeriesData),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),*/
              const SizedBox(height: 60,),
            ],
          ),
        );
      },

    );
  }
}

Widget stages (String title, String icon, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
    child: SizedBox(
      height: 250,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInImage.assetNetwork(
                width: 45,
                height: 45,
                placeholder: icon,
                image: icon),
              const SizedBox(width: 10,),
              Text(title, style: AppThemeWeb.regularText, softWrap: true, overflow: TextOverflow.visible,)
            ],
          ),
          const SizedBox(height: 20,),
          Text(description, style: AppThemeWeb.regularTextLight, softWrap: true, overflow: TextOverflow.visible,),
        ],
      ),
    ),
  );
}
