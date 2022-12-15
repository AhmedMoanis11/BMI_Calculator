import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secondbmi/second.dart';

class bmi extends StatefulWidget {

  @override
  _bmiState createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  bool Ismale=true;
  double height=120;
   int Age=18;
   int weight=75;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            "Bmi Calculator",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Column(
        children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(

                      child: GestureDetector(

                          onTap: ()
                          {
                            setState(() {
                              Ismale=true;
                            });
                          },

                        child: Container(
                          child: Column(
                            children: [

                              Icon(
                                Icons.male,
                                size: 120.0,
                              ),

                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:  Ismale?Colors.blue:Colors.grey ,
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: GestureDetector(

                          onTap: ()
                          {
                            setState(() {
                              Ismale=false;
                            });
                          },

                        child: Container(
                          child: Column(
                            children: [

                              Icon(
                                Icons.female,
                                size: 120.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !Ismale?Colors.blue:Colors.grey ,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(value:height,
                        min: 70,
                        max: 220,

                        onChanged:(value)
                        {
                          setState(() {
                            height=value;
                          });


                          print(value.round());
                        }


                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey ,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "${Age}",
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               FloatingActionButton(onPressed:()
                                   {
                                   setState(() {
                                     Age++;
                                   });
                                   },
                                 mini: true,
                                 child: Icon(
                                   Icons.add,
                                 ),


                               ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FloatingActionButton(onPressed:()
                                {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),


                                ),
                              ],
                            ),


                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),


                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FloatingActionButton(onPressed:()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),


                                ),
                              ],
                            ),


                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey ,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        Container(

          child: MaterialButton(onPressed: ()
          {
            var result=weight/pow(height/100,2);
            print(result.round());
           Navigator.push(context, MaterialPageRoute(
               builder:(context)
                   {
                     return second(
                       res: result.round(),
                       gender: Ismale,
                       agee: Age,
                     );
                   }


            ),
           );
          },
            color: Colors.grey,
            child: Text(
              "Calculate",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),

        ),



        ],
      ),
    );
  }
}