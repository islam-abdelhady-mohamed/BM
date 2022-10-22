import 'dart:math';
import 'dart:ui';
import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}
bool isMale =true;
double height = 120;
int weight = 60;
int age = 12;
class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       backgroundColor: Color(0xff264653),
        centerTitle: true,
       // backgroundColor: Colors.white,
        title: Text(
            ' BMI Calculator ',
          style: TextStyle(

            //fontSize: 25.0,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          //This is the first part of the Screen Male and Female
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //MALE
                  Expanded(

                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          //line if  ==> color: 'if' isMale ? Colors.blue : 'else' Colors.grey[300],
                          color: isMale ? Colors.blue : Colors.grey[300],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                             height: 100.0,
                             width: 100.0,
                            ),
                            SizedBox(height: 12.0,),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  //FEMALE
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:  !isMale ? Colors.blue : Colors.grey[300],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female_1.png'),
                              height: 100.0,
                              width: 100.0,
                            ),
                            SizedBox(height: 12.0,),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //This is the End part of the Screen Male and Female
          //Start of Slider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 27.0,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height ,
                        max: 220.0,
                        min: 60.0,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                        } ,
                    ),

                  ],
                ),
              ),
            ),
          ),
          //End of Slider
          //Start Age
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 20.0,

                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(Icons.remove),
                              ),

                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20.0,

                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          //End Age
          //This is the button
          Container(
            color: Color(0xff264653),
            width: double.infinity,
            child: MaterialButton(onPressed:(){
              double result = weight / pow (height / 100 , 2) ;
              print(result.round());
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMIResult(
                    age: age,
                    result: result.round(),
                    isMale: isMale,

                  ), ),
              );
            },

              height: 55.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
