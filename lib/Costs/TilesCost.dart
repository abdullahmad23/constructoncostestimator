import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Tiles extends StatefulWidget {
  Map<String, dynamic> rawData;
  Tiles({super.key, required this.rawData});

  @override
  State<Tiles> createState() => _ColouringState();
}

class _ColouringState extends State<Tiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // ================ Tiles Cost ====================
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                "Tiles Cost",
                style: Heading2(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff192730),
                ),
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item", style: Heading5Orange()),
                      Text("Quantity", style: Heading5Orange()),
                      Text("Cost", style: Heading5Orange()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("BathRoom Tiles", style: Heading5()),
                      Text("all", style: Heading5()),
                      Text(CalculateWashRoomTilesCost().toStringAsFixed(2),
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Room Tiles", style: Heading5()),
                      Text("all", style: Heading5()),
                      Text(CalculateRoomTilesCost().toStringAsFixed(2),
                          style: Heading5()),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ==================== Total cost on colouring ===============

  double CalculateWashRoomTilesCost() {
    double costperTile = 400; //Avrg decoration cost per square feet
    double BathTilesArea = widget.rawData['BathRooms'] * 35.0;
    return (BathTilesArea * costperTile);
  }

  double CalculateRoomTilesCost() {
    double costperTile = 400; //Avrg decoration cost per square feet
    double roomTilesArea = widget.rawData['BedRooms'] * 225.0;
    return (roomTilesArea * costperTile);
  }
}
