import 'package:bmi_calculator/data.dart';
import 'package:bmi_calculator/input.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Widget addText(
    double fontSize,
    Color textColor,
    FontWeight fontweight,
    TextAlign textalign,
    String text,
  ) {
    return Text(
      text,
      textAlign: textalign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontweight,
        color: textColor,
        fontFamily: "Times New Roman"
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            addText(
              30,
              Colors.white,
              FontWeight(1000),
              TextAlign.left,
              'your result',
            ),
            SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(
                20,
                Colors.white,
                FontWeight(1000),
                TextAlign.center,
                'Gender : ${gender == 1 ? 'male' : 'female'}',
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(
                20,
                Colors.white,
                FontWeight(1000),
                TextAlign.center,
                'Age : $ageVal',
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(
                20,
                Colors.white,
                FontWeight(1000),
                TextAlign.center,
                'weight : $weightVal',
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: addText(
                20,
                Colors.white,
                FontWeight(1000),
                TextAlign.center,
                'Height : $heightValue',
              ),
            ),

            SizedBox(height: 30),

            Expanded(
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.teal,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    addText(
                      25,
                      Colors.white,
                      FontWeight(1000),
                      TextAlign.left,
                      resultType,
                    ),
                    SizedBox(height: 15),
                    addText(
                      25,
                      Colors.white,
                      FontWeight(1000),
                      TextAlign.left,
                      bmi.toStringAsFixed(2),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: addText(
                        20,
                        Colors.white,
                        FontWeight(1000),
                        TextAlign.justify,
                        comment,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              height: 70.0,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(45.0),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Input()),
                  );
                },
                child: Text(
                  're-calculate',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight(1000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
