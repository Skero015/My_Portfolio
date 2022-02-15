import 'package:charts_flutter/flutter.dart' as charts;

class Skill {

  late final String skillType;
  late final String skillName;
  late final int skillLevel;
  late final charts.Color barColor;

  Skill(this.skillType,this.skillName, this.skillLevel, this.barColor);

}