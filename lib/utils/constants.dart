import 'package:flutter/material.dart';
import 'package:portfolio_webapp/models/Skill.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:portfolio_webapp/models/Stages.dart';

import 'images.dart';

class Constants{

  Constants._();

  static const String checkEmail = "Check your email";
  static const String confirmEmail = "We have sent you a confirmation link on your registered email address. Click on it before you continue.";

  static const String resetPassword = "We have sent you a reset password link on your registered email address.";

  static const String intro = 'A reliable, dedicated, and motivated Software Development graduate who has completed his Advanced Diploma in Information Technology. Experienced with all stages of the development cycle '
  'for structured solutions. Well versed with numerous programming languages, I aim to increase '
  'productivity within the workplace with my desire for constant growth. I have experience building '
  'apps, both collaborative and solo work. I\'m always eager to provide value.';

  static List<Skill> languageSkills = [
    Skill('Languages', 'Java', 7, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Languages', 'Kotlin', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Languages', 'Dart', 8, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Languages', 'C#', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Languages', 'Python', 5, charts.ColorUtil.fromDartColor(Colors.black87)),
  ];

  static List<Skill> frameworkSkills = [
    Skill('Frameworks', 'Flutter', 9, charts.ColorUtil.fromDartColor(Colors.red)),
    Skill('Frameworks', 'Xamarin', 5, charts.ColorUtil.fromDartColor(Colors.blue)),
    Skill('Frameworks', 'ASP.NET', 7, charts.ColorUtil.fromDartColor(Colors.purple)),
    Skill('Frameworks', 'Flask', 4, charts.ColorUtil.fromDartColor(Colors.black87)),
  ];

  static List<Skill> databaseSkills = [
    Skill('Databases', 'Microsoft SQL Server', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Databases', 'MySQL', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Databases', 'Firebase NoSQL', 7, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Databases', 'MongoDB NoSQL', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
  ];

  static List<Skill> otherSkills = [
    Skill('Other tools', 'Microsoft SQL Server', 8, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Other tools', 'MySQL', 7, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Other tools', 'Firebase NoSQL', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
    Skill('Other tools', 'MongoDB NoSQL', 6, charts.ColorUtil.fromDartColor(Colors.black87)),
  ];

  static List<Stage> stages = [
    Stage ('Design', Images.design, 'I design I design I do that I do that and then I do this and that1'),
    Stage ('Develop', Images.develop, 'I design I design I do that I do that and then I do this and that1'),
    Stage ('Publish', Images.publish, 'I design I design I do that I do that and then I do this and that1'),
    Stage ('Maintenance', Images.maintenance, 'I design I design I do that I do that and then I do this and that1'),
  ];
}

enum englishProficiency {Good, Fair, Bad}