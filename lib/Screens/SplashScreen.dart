import 'package:constructoncostestimator/Components/Button.dart';
import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:constructoncostestimator/Screens/Home.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a4151),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("images/costImg.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29),
                  child: Text(
                    "Streamline your construction budget with our Construction Estimator App—your go-to tool for precise material cost calculations. Build your dream home efficiently and within budget",
                    style: pStyle(),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Button(
                text: "Get Started",
                method: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ],
        ),
      ),
    );
  }
}
