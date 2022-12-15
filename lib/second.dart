import 'package:flutter/material.dart';

class second extends StatelessWidget {
  final int res;
  final bool gender;
  final int agee;

  second({
    required this.res,
    required this.gender,
    required this.agee,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Bmi result",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Result:${res}",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Gender:${gender?"Male":"Female"}",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Age:${agee}",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
