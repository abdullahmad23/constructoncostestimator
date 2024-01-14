import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:constructoncostestimator/Costs/Foundation.dart';
import 'package:constructoncostestimator/Screens/Home.dart';
import 'package:constructoncostestimator/Screens/TotalBudget.dart';
import 'package:flutter/material.dart';

class ShowAllData extends StatefulWidget {
  Map<String, dynamic> rawData;
  ShowAllData({super.key, required this.rawData});

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
                      color: const Color(0xff192730),
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
                          Text(
                            'Total Cost',
                            style: Heading5(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Foundation(
                  //               rawData: widget.rawData,
                  //             )));
                  // },
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff192730),
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
                              child: Image.asset("images/brick.gif"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Foundation & \n Structure',
                            style: Heading5(),
                          ),
                        ],
                      ))),
                ),
                Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff192730),
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
                            child: const Icon(
                              Icons.gif_box_rounded,
                              color: Color.fromARGB(255, 196, 199, 13),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Steel Cost',
                          style: Heading5(),
                        ),
                      ],
                    ))),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

// import 'dart:html';

// import 'package:constructoncostestimator/Components/TextStyels.dart';

