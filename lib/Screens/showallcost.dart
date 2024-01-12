import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:constructoncostestimator/Screens/Home.dart';
import 'package:constructoncostestimator/Screens/TotalBudget.dart';
import 'package:flutter/material.dart';

class ShowAllData extends StatefulWidget {
  Map<String, dynamic> rawData = {};
  ShowAllData({super.key, required rawData});

  @override
  State<ShowAllData> createState() => _ShowAllDataState();
}

class _ShowAllDataState extends State<ShowAllData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () => const TotalBudget(),
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xff192730),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Total Cost',
                    style: Heading5(),
                  ))),
            ),
          ],
        ),
      )),
    );
  }
}

// import 'dart:html';

// import 'package:constructoncostestimator/Components/TextStyels.dart';
// import 'package:flutter/material.dart';

// class ShowAllData extends StatefulWidget {
//   const ShowAllData({super.key, required Map<String, dynamic> rawData});

//   @override
//   State<ShowAllData> createState() => _ShowAllDataState();
// }

// class _ShowAllDataState extends State<ShowAllData> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     
//     );
//   }
// }

