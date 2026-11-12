import 'package:bmi_calculator/data.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const new({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.orange, width: 3),
                    
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BMI Result = $bmi ',
                          
                          style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight(1000)
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}