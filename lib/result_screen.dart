import 'package:bmi_calculator/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  bool isMale;
  double height;
  int weight;


  ResultScreen({
    required this.isMale,
    required this.height,
    required this.weight,
});


  @override
    Widget build (BuildContext context) {

    double calculatedBMI = double.parse((( weight / height / height) * 10000).toStringAsFixed(1));

    String textBMICategory = '';

    String bmiCategory () {
      if(calculatedBMI < 18.5) {
        textBMICategory = 'underweight';
      }
      else if (calculatedBMI > 18.5 && calculatedBMI < 24.9) {
        textBMICategory = 'normal';
      }
      else if(calculatedBMI > 25 && calculatedBMI < 29) {
        textBMICategory = 'overweight';
      } else {
        textBMICategory = 'obesity';
      }
      return textBMICategory;
    }

    return Scaffold(
      backgroundColor: const Color(0xFF101439),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101439),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.white,
              size: 30
            )
        ),
      ),
      body: Center(
          child: Column(
            children: [
              if(isMale == true)
                Expanded(
                    child: Container(
                      height: 250,
                      width: 250,
                      child: const Image(image: AssetImage('assets/male.png')),
                )
                ),
              if(isMale == false)
                Expanded(
                    child: Container(
                      height: 250,
                      width: 250,
                      child: const Image(image: AssetImage('assets/female.png')),
                )
                ),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Your BMI',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$calculatedBMI',
                              style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Your weight is ' + bmiCategory(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
                                },
                                child: const Text(
                                  'Calculate BMI again',
                                  style: TextStyle(
                                      color: Color(0xFFFF0066)
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                  )
              ),
              const SizedBox(
                height: 100,
              )

            ],
          ),
        )

    );
  }
}