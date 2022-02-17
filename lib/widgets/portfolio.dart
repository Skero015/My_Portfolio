
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';

import 'custom_button.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            projectLeft(constraints, 'STALLET', 'Android / IOS app', Images.stallet, Images.background2, 'Description about app', 'Stuff about the tech stack'),
            const SizedBox(height: 100,),
            projectRight(constraints, 'The Hooch', 'Android / IOS app', Images.hooch, Images.background2, 'Description about app', 'Stuff about the tech stack'),
            const SizedBox(height: 100,),
          ],
        );
      }
    );
  }
}

Widget projectLeft (BoxConstraints constraints, String name, String platform, image, String backgroundImage, String description, String techStack) {
  return Padding(
    padding: EdgeInsets.only(left: constraints.minWidth / 12.5, top: 40, bottom: 40),
    child: Row(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 400,
              width: constraints.maxWidth / 3,
              child: FadeInImage.assetNetwork(
                width: 85,
                height: 105,
                placeholder: backgroundImage,
                image: backgroundImage,),
            ),
            SizedBox(
              height: 400,
              width: constraints.maxWidth / 3,
              child: FadeInImage.assetNetwork(
                width: 60,
                height: 60,
                placeholder: image,
                image: image,),
            ),
          ],
        ),
        const SizedBox(width: 50,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(platform, style: AppThemeWeb.subheading, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Text(name, style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Text(description, style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Row(
              children: [
                CustomButton(
                  onPressed: () {

                  },
                  buttonText: 'TECH STACK',
                  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget projectRight (BoxConstraints constraints, String name, String platform, String image, String backgroundImage, String description, String techStack) {
  return Padding(
    padding: EdgeInsets.only(right: constraints.maxWidth / 12.5, top: 50, bottom: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(platform, style: AppThemeWeb.subheading, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Text(name, style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Text(description, style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
            const SizedBox(height: 10,),
            Row(
              children: [
                CustomButton(
                  onPressed: () {

                  },
                  buttonText: 'TECH STACK',
                  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 50,),
        Stack(
          children: [
            SizedBox(
              height: 400,
              width: constraints.maxWidth / 3,
              child: FadeInImage.assetNetwork(
                width: 85,
                height: 105,
                placeholder: backgroundImage,
                image: backgroundImage,),
            ),
            SizedBox(
              height: 400,
              width: constraints.maxWidth / 3,
              child: FadeInImage.assetNetwork(
                width: 60,
                height: 60,
                placeholder: image,
                image: image,),
            ),
          ],
        ),
      ],
    ),
  );
}
