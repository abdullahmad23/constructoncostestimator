import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class TotalBudget extends StatefulWidget {
  final rawData;
  const TotalBudget({super.key, this.rawData});

  @override
  State<TotalBudget> createState() => _TotalBudgetState();
}

class _TotalBudgetState extends State<TotalBudget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataPrint();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a4151),
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(width: double.infinity),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Total Estimated Cost",
              style: Heading1(),
            ),
            // ================ Foundation & Structure Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "Foundation & Structure",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
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
                      Text("Briks", style: Heading5()),
                      Text("${calculateBriks().toString()}", style: Heading5()),
                      Text("${calculateBriksCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cement", style: Heading5()),
                      Text("${calculateCement().toString()}",
                          style: Heading5()),
                      Text("${calculateCementCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sand", style: Heading5()),
                      Text("${calculateSand().toString()} tons",
                          style: Heading5()),
                      Text("${calculateSandCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Crush", style: Heading5()),
                      Text("${calculateCrush().toString()} tons",
                          style: Heading5()),
                      Text("${calculateCrushCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Labour", style: Heading5()),
                      Text("${calculateLabourCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total ", style: Heading5Orange()),
                      Text("${foundationTotal().toStringAsFixed(2)}",
                          style: Heading5Orange()),
                    ],
                  ),
                ],
              ),
            ),

            // ================ Steel Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Text(
              "Steel Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
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
                      Text("Steel", style: Heading5()),
                      Text("${calculateSteel().toString()} ton",
                          style: Heading5()),
                      Text("${calculateSteelCost().toString()}",
                          style: Heading5()),
                    ],
                  ),
                ],
              ),
            ),
            // ================ Floor Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Floor Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("Total", style: Heading5()),
                    Text("${floorArea()} Area", style: Heading5()),
                    Text("${calculateFloorCost().toString()}",
                        style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ciment", style: Heading5()),
                    Text("600 Bags", style: Heading5()),
                    Text("5060000", style: Heading5()),
                  ],
                ),
              ]),
            ),
            // ================ Utilities Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Utitlites Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("Stuf", style: Heading5()),
                    Text("30 items", style: Heading5()),
                    Text("40000", style: Heading5()),
                  ],
                ),
              ]),
            ),
            // ================ Utitlites Instalation Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Utitlites Instalation Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("mirror", style: Heading5()),
                    Text("30 items", style: Heading5()),
                    Text("40000", style: Heading5()),
                  ],
                ),
              ]),
            ),

            // ================ Doors and Windows Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Windows and Doors Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("Windows", style: Heading5()),
                    Text("${CalculateWindow().toString()}", style: Heading5()),
                    Text("${CalculateWindowCost().toString()}",
                        style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Doors", style: Heading5()),
                    Text("${CalculateDoor().toString()}", style: Heading5()),
                    Text("${CalculateDoorCost()}", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text("${totalCostWD().toString()}",
                        style: Heading5Orange()),
                  ],
                ),
              ]),
            ),

            // ================ Colouring Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Colouring Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("Mwteial Cost", style: Heading5()),
                    Text("45 item", style: Heading5()),
                    Text("40000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Labour", style: Heading5()),
                    Text("90000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text("94000", style: Heading5Orange()),
                  ],
                ),
              ]),
            ),

            // ================ Decoration Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Decoration Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
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
                    Text("Roof Decoration", style: Heading5()),
                    Text("40000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wall", style: Heading5()),
                    Text("90000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Washroom Tiles", style: Heading5()),
                    Text("90000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Washroom Tiles", style: Heading5()),
                    Text("90000", style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text("94000", style: Heading5Orange()),
                  ],
                ),
              ]),
            ),

            // ================ Colouring Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Total Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff192730),
              ),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Cost", style: Heading5Orange()),
                    Text("27,810,20", style: Heading5Orange()),
                  ],
                ),
              ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          ]),
        ),
      ),
    );
  }

// ==================== Formula Methods =================

  dataPrint() {
    Map temp = widget.rawData;
    temp.forEach((key, value) {
      print('$key: $value');
    });
  }

  double totalContructionCost() {
    double costPerSqft = 2000;
    return (widget.rawData["coverdArea"] * costPerSqft);
  }

// ============== Calculate Total Briks =================
  double calculateBriks() {
    double BriksPerSqft = 8; // how many briks use in 1sq.ft area
    return (widget.rawData["coverdArea"] * BriksPerSqft);
  }

// ============== Calculate Total Briks Cost =================
  double calculateBriksCost() {
    double costPerBrik = 10; // cost of one briks
    return (calculateBriks() * costPerBrik);
  }

  // ============== Calculate Total cement bag =================
  double calculateCement() {
    double cementPerSqft = 0.4; // how many cement use in 1sq.ft area
    return (widget.rawData["coverdArea"] * cementPerSqft);
  }

// ============== Calculate Total cost of cement  =================
  double calculateCementCost() {
    double cementCostPerBag = 10; // cost of one bag cement
    return (calculateCement() * cementCostPerBag);
  }

  // ============== Calculate Total sand in tons  =================
  double calculateSand() {
    double sandPerSqft = 0.816; // how many sand use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * sandPerSqft);
  }

// ============== Calculate Total sand cost =================
  double calculateSandCost() {
    double sandCostPerTon = 10; // cost of  sand in tons
    return (calculateSand() * sandCostPerTon);
  }

  // ============== Calculate Total Crush in tons  =================
  double calculateCrush() {
    double CrushPerSqft = 0.816; // how many Crush use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * CrushPerSqft);
  }

  // ============== Calculate Total Crush cost =================
  double calculateCrushCost() {
    double crushCostPerTon = 10; // cost of  Crush in tons
    return (calculateCrush() * crushCostPerTon);
  }

  // ============== Calculate Total Labour cost =================
  double calculateLabourCost() {
    double labourCostPersqft = 10; // cost of one Crush in tons
    return (widget.rawData["coverdArea"] * labourCostPersqft);
  }

//============== Foundation and tructure total Cost ===============
  double foundationTotal() {
    double total = (calculateBriksCost() +
        calculateCementCost() +
        calculateCrushCost() +
        calculateSandCost() +
        calculateLabourCost());

    return total;
  }

  //================================================================
  //========================= Steel ================================
  //================================================================

  // ============== Calculate Total steel in tons  =================
  double calculateSteel() {
    double steelPerSqft = 4; // how many steel use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * steelPerSqft);
  }

  // ============== Calculate Total Crush cost =================
  double calculateSteelCost() {
    double steelCostPerTon = 235000; // cost of  steel in tons
    return (calculateSteel() * steelCostPerTon);
  }

  //================================================================
  //========================= Flooring =============================
  //================================================================

  double floorArea() {
    double floorArea = 1.3;
    return (widget.rawData["coverdArea"] * floorArea);
  }

  // ============== Calculate Total floor Area cost =================
  double calculateFloorCost() {
    double labourCostPersqft = 40; // labour cost per sqft area
    return (floorArea() * labourCostPersqft);
  }

  //================================================================
  //========================= utilities ============================
  //================================================================

  double CalculateUtilitiesCost() {
    double plumbingcostperfeet = 50;
    double elictercitycost = (widget.rawData['BedRooms'] * 7 +
        widget.rawData['LivingRooms'] * 9 +
        widget.rawData['BathRooms'] * 3 +
        widget.rawData['DrawingRooms'] * 9);

    double plumbingcost = ((floorArea() / 1.3) * plumbingcostperfeet);
    return ((elictercitycost * 10) + plumbingcost);
  }

  //================================================================
  //======================== Doors & Windows =======================
  //================================================================

  double CalculateDoor() {
    double numOfDoors = (widget.rawData['BedRooms'] +
        widget.rawData['BathRooms'] +
        widget.rawData['DrawingRooms'] +
        widget.rawData['LivingRooms']);
    return numOfDoors;
  }

  double CalculateDoorCost() {
    double costPerDoor = 8000; //Avg cost per Door
    return (CalculateDoor() * costPerDoor);
  }

  double CalculateWindow() {
    double numOfDoors =
        (widget.rawData['BedRooms'] + widget.rawData['LivingRooms']);
    return (numOfDoors);
  }

  double CalculateWindowCost() {
    double costPerWindow = 200; //Avg cost per Window
    return (CalculateWindow() * costPerWindow);
  }

  double totalCostWD() {
    double total = (CalculateWindowCost() + CalculateDoorCost());
    return (total);
  }

  // ==================== Total cost on colouring ===============
}

//  totalArea: 1.0
//  coverdArea: 1.0
//  BedRooms: 18
//  BathRooms: 8
//  Kitchens: 88
//  LivingRooms: 8
//  DrawingRooms: 5
