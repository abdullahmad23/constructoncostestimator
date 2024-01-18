import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:constructoncostestimator/Costs/Colouring.dart';
import 'package:constructoncostestimator/Costs/Decoration.dart';
import 'package:constructoncostestimator/Costs/Foundation.dart';
import 'package:constructoncostestimator/Costs/Steel.dart';
import 'package:constructoncostestimator/Costs/Utilities.dart';
import 'package:constructoncostestimator/Costs/Windowss.dart';
import 'package:constructoncostestimator/Costs/floor.dart';
import 'package:constructoncostestimator/Screens/Home.dart';
import 'package:constructoncostestimator/Screens/Print.dart';
import 'package:constructoncostestimator/Screens/TotalBudget.dart';
import 'package:flutter/material.dart';

class ShowAllData extends StatefulWidget {
  Map<String, dynamic> rawData;
  ShowAllData({super.key, required this.rawData});

  @override
  State<ShowAllData> createState() => _ShowAllDataState();
}

class _ShowAllDataState extends State<ShowAllData> {
  Map<String, dynamic> data = {
    "Bricks": {"Quantity": result['NoOfBricks'], "Cost": result['costOfBrick']},
    "Cement": {
      "Quantity": result['NoOfCement'],
      "Cost": result['CostOfCement']
    },
    "Sand": {"Quantity": result['NoOfSand'], "Cost": result['CostOfSand']},
    "Crush": {"Quantity": 100, "Cost": 100},
    "Labour": {"Quantity": 100, "Cost": 100},
    "Steel": {"Quantity": 100, "Cost": 100},
    "Material&Labour": {"Quantity": 100, "Cost": 100},
    "Plumbing": {"Quantity": 100, "Cost": 100},
    "Electrical": {"Quantity": 100, "Cost": 100},
    "Glass": {"Quantity": 100, "Cost": 100},
    "UtilitiesTotal": {"Quantity": 100, "Cost": 100},
    "Windows": {"Quantity": 100, "Cost": 100},
    "Dorrs": {"Quantity": 100, "Cost": 100},
    "W&DTotal": {"Quantity": 100, "Cost": 100},
    "Colouring": {"Quantity": 100, "Cost": 100},
    "RoofDecoration": {"Quantity": 100, "Cost": 100},
    "Washroom": {"Quantity": 100, "Cost": 100},
    "Kitchens": {"Quantity": 100, "Cost": 100},
    "Others": {"Quantity": 100, "Cost": 100},
    "Total": {"Quantity": 100, "Cost": 100},
    "TotalCost": "TotalCost"
  };
  pdfPrint() {
    generatePdf(data).then((_) {
      print('PDF generated successfully.');
    });
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TotalBudget(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 246, 247),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              child: Image.asset("images/home.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Total Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Foundation(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 251, 252),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child: Image.asset("images/structure.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Foundation & \n Structure',
                            // style: Heading5(),
                          ),
                        ],
                      ))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Steel(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 251, 252),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              child: Image.asset("images/steel.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Steel Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Floor(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 248, 248),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child: Image.asset("images/floor.png"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Floor Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Utilities(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 241, 241),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 249, 250),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child: Image.asset("images/utilities (2).gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Utilities Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Windowss(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 244, 245),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child: Image.asset("images/door.png"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Windows &\n Doors Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ))),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Colouring(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 251, 252),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff2a4151),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child:
                                  Image.asset("images/icons8-paint-roller.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Colouring\n   Cost',
                            // style: Heading5(),
                          ),
                        ],
                      ))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => decoration(
                                  rawData: widget.rawData,
                                )));
                  },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 251, 254, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 245, 247),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(),
                              // child: const Icon(
                              //   Icons.gif_box_rounded,
                              //   color: Color.fromARGB(255, 196, 199, 13),
                              // ),
                              child: Image.asset("images/icons8-warehouse.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Decoration\n    Cost',
                            // style: TextStyle(c),
                          ),
                        ],
                      ))),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.5,
                      MediaQuery.of(context).size.width * 0.13),
                ),
                onPressed: pdfPrint,
                child: const Text('print')),
          ],
        ),
      )),
    );
  }
}

// import 'dart:html';

// import 'package:constructoncostestimator/Components/TextStyels.dart';

