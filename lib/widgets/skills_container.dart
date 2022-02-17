
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';

class SkillsContainer extends StatefulWidget {
  const SkillsContainer({Key? key}) : super(key: key);

  @override
  _SkillsContainerState createState() => _SkillsContainerState();
}

class _SkillsContainerState extends State<SkillsContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 460,
        width: 410,
        decoration: BoxDecoration(
            color: AppThemeWeb.secondaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                blurRadius: 20,
                offset: const Offset(-5.0, 5.5), // changes position of shadow
              ),
            ]
        ),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 50,
              child: Center(
                child: Text('Languages', style: AppThemeWeb.name, overflow: TextOverflow.clip,),
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              color: Colors.white,
              width: 230,
              height: 300,
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Text('- Kamogelo Seima', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                  const SizedBox(height: 10,),
                  Text('- Kamogelo Seima', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                  const SizedBox(height: 10,),
                  Text('- Kamogelo Seima', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
