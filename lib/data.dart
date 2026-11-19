  import 'dart:ffi';

import 'package:flutter/material.dart';

int heightValue = 175;
  int weightVal = 62;
  int ageVal = 20;
  int gender = 0;
  double bmi = (weightVal / (heightValue * heightValue)) * 10000;
  List<Color> resultTextColor = [Colors.redAccent, Colors.blueAccent];
  Color resultcolor = resultTextColor[0];

  String resultType = "Normal";
  List<String> commentinfo = ["Maintain the balanced diet and regular physical activity to support overall well","being and prevent the onset of weight relateed health issues" ];
  String comment = commentinfo[0];
  

  