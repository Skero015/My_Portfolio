
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/images.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';

Widget SummaryCard () {
  return Center(
    child: Align(
      alignment: Alignment(0.7, 0),
      child: Material(

        child: Container(
          height: 550,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xFFFAF0E6),
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
              const SizedBox(height: 50,),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: FadeInImage.assetNetwork(
                  placeholder: Images.me,
                  image: Images.me,).image,
                minRadius: 100,
                maxRadius: 110,
              ),
              const SizedBox(height: 40,),
              Text('Kamogelo Seima', style: AppThemeWeb.name, overflow: TextOverflow.clip,),
              const SizedBox(height: 30,),
              Divider(indent: 150, endIndent: 150, color: Colors.blue[700],),
              const SizedBox(height: 30,),
              Center(child: Text('S O F T W A R E   D E V E L O P E R', style: AppThemeWeb.regularText, overflow: TextOverflow.clip,)),
              const SizedBox(height: 56,),
              Container(
                color: Colors.white,
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.github,
                        height: 18,
                        width: 18,
                      ),
                      const SizedBox(width: 20,),
                      Image.asset(
                        Images.linkedIn,
                        height: 18,
                        width: 20,
                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}