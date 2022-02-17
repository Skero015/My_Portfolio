
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:portfolio_webapp/widgets/summary_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'custom_button.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Row(//row with two containers in the main container body
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
                  Text('I\'ts Kamo!', style: AppThemeWeb.subheading, overflow: TextOverflow.clip,),
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
    );
  }
}
