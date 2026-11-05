import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int heightVal = 150;
  int weightVal = 62;
  int ageVal = 20;
  int gender = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold( 
        appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.orange,
        title: Text('BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight(1000),
            ),
          ),    

        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            
            Text('Gender',
              textAlign: TextAlign.center,  
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: (){

                      setState(() {
                        gender = 1;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      color: gender  == 1 ? Colors.orange : Colors.teal,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, color: Colors.white, size: 25),
                          SizedBox(height: 10,),
                          Text('Male',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(1000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),               
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        gender = 2;
                        
                      });
                      
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      color: gender  == 2 ? Colors.orange : Colors.teal,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, color: Colors.white, size: 25),
                          SizedBox(height: 10,),
                          Text('Female',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(1000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),               
                ),
              ],
            ),
            
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.teal,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Text('Height',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(1000),
                            ),
                          ),
                          Text('$heightVal cm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(1000),
                            ),
                          ),
                          Slider(
                            value: heightVal.toDouble(),
                            min: 100,
                            max: 220,
                            onChanged: (double newVal) {
                              setState(() {
                                heightVal = newVal.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),               
                ),
              ],
            ),

            Row(
              children:[
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.teal,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Text('Weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight(1000),
                          ),
                        ),

                        Text('$weightVal kg',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight(1000),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(
                              backgroundColor: Colors.orange,
                              onPressed: () {
                                setState(() {
                                  weightVal--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton.small(
                              backgroundColor: Colors.orange,
                              onPressed: () {
                                setState(() {
                                  weightVal++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),               
                ),

                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.teal,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Text('Age',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight(1000),
                          ),
                        ),
                        Text('$ageVal years',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight(1000),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            FloatingActionButton.small(
                              backgroundColor: Colors.orange,
                              onPressed: () {
                                setState(() {
                                  ageVal--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white, size: 30.0),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton.small(
                              backgroundColor: Colors.orange,
                              onPressed: () {
                                setState(() {
                                  ageVal++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white, size: 30.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),               
                ),
              ]
            ),

            Expanded(
              child: Container(
                height: 50,
                color: Colors.teal,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text('Calculate BMI',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight(1000),
                                ),
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