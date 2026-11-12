import 'package:bmi_calculator/data.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const new({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  Widget addText(double fontSize, Color textColor, FontWeight fontweight, TextAlign textalign, String text){
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontweight,
        color: textColor,

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.orange,
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight(1000), 
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            addText(30, Colors.white, FontWeight(1000), TextAlign.left , 'your result'),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(20, Colors.white, FontWeight(1000), TextAlign.center, 'Gender : ${gender == 1 ? 'male' : 'female'}'),
              ),
              Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(20, Colors.white, FontWeight(1000), TextAlign.center, 'Age : $ageVal'),
              ),
              Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(20, Colors.white, FontWeight(1000), TextAlign.center, 'weight : $weightVal'),
              ),
              Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(20, Colors.white, FontWeight(1000), TextAlign.center, 'Height : $heightValue'),
              ),
              
              SizedBox(height: 30,),

              Container(
                height: 150,
                width: double.infinity,
                color: Colors.teal,
              )

          ],
        ),
      ),
    );
  }
}