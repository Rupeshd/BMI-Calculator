import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int heightValue = 175;
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
          title: Text(
            'BMI Calculator',
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            gender = 1;
                          });
                        },
                        child: Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: gender == 1 ?Colors.orange : Colors.teal,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange, width: 3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male, color: Colors.white, size: 50),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight(1000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            gender = 2;
                          });
                        },
                        child: Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: gender == 2? Colors.orange : Colors.teal,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange, width: 3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female, color: Colors.white, size: 50),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight(1000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                          'Height',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight(1000),
                          ),
                        ),
                        Text(
                          '$heightValue cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight(1000),
                          ),
                        ),
                        Slider(
                          value: heightValue.toDouble(),
                          min: 100,
                          max: 230,
                          activeColor: Colors.orange,
                          inactiveColor: Colors.white,
                          onChanged: (double newValue) {
                            setState(() {
                              heightValue = newValue.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                'Weight',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight(1000),
                                ),
                              ),
                    
                              Text(
                                '$weightVal kg',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight(1000),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton.small(
                                    onPressed: () {
                                  setState(() {
                                    weightVal++;
                                  });
                                },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  FloatingActionButton.small(
                                    onPressed: () {
                                  setState(() {
                                    weightVal--;
                                  });
                                },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                'Age',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight(1000),
                                ),
                              ),
                    
                              Text(
                                '$ageVal Years',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight(1000),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton.small(
                                    onPressed: () {
                                  setState(() {
                                    ageVal++;
                                  });
                                },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  FloatingActionButton.small(
                                    onPressed: () {
                                  setState(() {
                                    ageVal--;
                                  });
                                },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                height: 80.0,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0),
                  )
                ),
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
            ],

          ),
        ),
      ),
    );
  }
}
