import 'package:constructoncostestimator/Components/Button.dart';
import 'package:constructoncostestimator/Components/TextField.dart';
import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:constructoncostestimator/Screens/TotalBudget.dart';
import 'package:constructoncostestimator/Screens/showallcost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Map<String, dynamic> data = {};

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _totalSizeController = TextEditingController();
  final TextEditingController _coverdSizeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  OnButtonPressed() {
    if (_formKey.currentState!.validate()) {
      data['totalArea'] = double.parse(_totalSizeController.text);
      data['coverdArea'] = double.parse(_coverdSizeController.text);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const InputScreen1()));
    } else {
      EasyLoading.showToast("field Empty");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                "Plot Area",
                style: Heading1(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                width: 50.0,
                height: 2.0,
                color: Colors.white,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              InputFields(
                controller: _totalSizeController,
                fieldText: "Enter total Size in Sq.ft",
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter some value";
                  } else if (int.parse(value) <= 700) {
                    return "Minimum 700sq ft ";
                  }
                  return null;
                },
              ),
              InputFields(
                controller: _coverdSizeController,
                fieldText: "Enter Coverd Size in Sq.ft",
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter some sq.ft";
                  } else {
                    int total = int.parse(_totalSizeController.text);
                    int coverdArea = int.parse(value);
                    if (coverdArea > total) {
                      print('object');
                      return "invalid Area";
                    }
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Button(text: "Next", method: OnButtonPressed),
            ],
          ),
        ),
      ),
    );
  }
}

class InputScreen1 extends StatefulWidget {
  const InputScreen1({super.key});

  @override
  State<InputScreen1> createState() => _InputScreen1State();
}

class _InputScreen1State extends State<InputScreen1> {
  // ==============  Rooms ========================
  final TextEditingController _bedRoomsController = TextEditingController();
  final TextEditingController _bathRoomsController = TextEditingController();
  final TextEditingController _kitchensController = TextEditingController();
  final TextEditingController _livingRoomsController = TextEditingController();
  final TextEditingController _drawingRoomsController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  OnButtonPressed() {
    if (_formKey.currentState!.validate()) {
      data['BedRooms'] = int.parse(_bedRoomsController.text);
      data['BathRooms'] = int.parse(_bathRoomsController.text);
      data['Kitchens'] = int.parse(_kitchensController.text);
      data['LivingRooms'] = int.parse(_livingRoomsController.text);
      data['DrawingRooms'] = int.parse(_drawingRoomsController.text);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ShowAllData(
                    rawData: data,
                  )));
    } else {
      EasyLoading.showToast("Field is Empty");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  "Room Details",
                  style: Heading1(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  width: 80.0,
                  height: 2.0,
                  color: Colors.white,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                InputFields(
                  controller: _bedRoomsController,
                  fieldText: "BedRooms",
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter some value";
                    }
                    return null;
                  },
                ),
                InputFields(
                  controller: _bathRoomsController,
                  fieldText: "BathRooms",
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter some value";
                    }
                    return null;
                  },
                ),
                InputFields(
                  controller: _kitchensController,
                  fieldText: "Kitchens",
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter some value";
                    }
                    return null;
                  },
                ),
                InputFields(
                  controller: _livingRoomsController,
                  fieldText: "LivingRooms ",
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter some value";
                    }
                    return null;
                  },
                ),
                InputFields(
                  controller: _drawingRoomsController,
                  fieldText: "DrawingRooms",
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter some value";
                    }
                    return null;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                Button(text: "Next", method: OnButtonPressed),
                SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
