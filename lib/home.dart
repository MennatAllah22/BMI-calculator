import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
{
  Color selectedGender = Colors.white;
  bool isMale = true;
  double height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF101439),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101439),
        elevation: 0,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/male-symbol.svg",
                                height: 75,
                                width: 75,
                                color: isMale ? selectedGender : Colors.white38
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: isMale ? selectedGender : Colors.white38
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/female-symbol.svg",
                                height: 80,
                                width: 80,
                                color: isMale? Colors.white38 : selectedGender,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: isMale? Colors.white38 : selectedGender
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
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
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                        const Text(
                            'CM',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 50.0,
                      max: 250.0,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey[300],
                      thumbColor: const Color(0xFFFF0066),
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  children: [
                    Expanded(
                      child: Container(
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
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                             Text(
                              '$weight',
                              style: const TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(weight > 1) {
                                        weight--;
                                      }
                                    });
                                  },
                                  mini: true,
                                  heroTag: null,
                                  backgroundColor: Colors.white54,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.white54,
                                  mini: true,
                                  heroTag: null,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Container(
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
                              'AGE',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                             Text(
                              '$age',
                              style: const TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(age > 1) {
                                        age--;
                                      }
                                    });
                                  },
                                  backgroundColor: Colors.white54,
                                  mini: true,
                                  heroTag: null,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.white54,
                                  heroTag: null,
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 2
              ),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xFFFF0066),
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(isMale: isMale,weight: weight,height: height,)));
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}