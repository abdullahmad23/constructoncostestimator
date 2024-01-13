import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class TotalBudget extends StatefulWidget {
  final Map rawData;
  const TotalBudget({super.key, required this.rawData});

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
      backgroundColor: const Color(0xff2a4151),
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(width: double.infinity),
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
                color: const Color(0xff192730),
              ),
              padding: const EdgeInsets.all(10.0),
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
                      Text(calculateBriks().toString(), style: Heading5()),
                      Text(calculateBriksCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cement", style: Heading5()),
                      Text(calculateCement().toString(), style: Heading5()),
                      Text(calculateCementCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sand", style: Heading5()),
                      Text("${calculateSand().toString()} cubic ft per sqft",
                          style: Heading5()),
                      Text(calculateSandCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Crush", style: Heading5()),
                      Text("${calculateCrush().toString()} tons",
                          style: Heading5()),
                      Text(calculateCrushCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Labour", style: Heading5()),
                      Text(calculateLabourCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total ", style: Heading5Orange()),
                      Text(foundationTotal().toStringAsFixed(2),
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
                color: const Color(0xff192730),
              ),
              padding: const EdgeInsets.all(10.0),
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
                      Text(calculateSteelCost().toString(), style: Heading5()),
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
                    Text("Material & labour", style: Heading5()),
                    Text("${floorArea().toString()} Area", style: Heading5()),
                    Text(calculateFloorCost().toString(), style: Heading5()),
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
                //==============  plumbing cost ==================
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Plumbing", style: Heading5()),
                    Text(" ", style: Heading5()),
                    Text(CalculatePlumbingCost().toString(), style: Heading5()),
                  ],
                ),

                //==============  Electricity cost ==================
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Electrical", style: Heading5()),
                    Text(" ", style: Heading5()),
                    Text(CalculateElectricityCost().toStringAsFixed(2),
                        style: Heading5()),
                  ],
                ),
                //==============  Glass cost ==================
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Glass", style: Heading5()),
                    Text("", style: Heading5()),
                    Text(CalculateGlassCost().toString(), style: Heading5()),
                  ],
                ),
                //==============  total cost ==================
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5()),
                    Text("", style: Heading5()),
                    Text(CalculateUtilitiesCost().toStringAsFixed(2),
                        style: Heading5()),
                  ],
                ),
              ]),
            ),
            // ================ Utitlites Instalation Cost ====================
            // SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            // Text(
            //   "Utitlites Instalation Cost",
            //   style: Heading2(),
            // ),
            // SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Color(0xff192730),
            //   ),
            //   padding: EdgeInsets.all(10.0),
            //   width: MediaQuery.of(context).size.width * 0.95,
            //   child: Column(children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("Item", style: Heading5Orange()),
            //         Text("Quantity", style: Heading5Orange()),
            //         Text("Cost", style: Heading5Orange()),
            //       ],
            //     ),
            //     SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("Utilities", style: Heading5()),
            //         Text("30 items", style: Heading5()),
            //         Text("40000", style: Heading5()),
            //       ],
            //     ),
            //   ]),
            // ),

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
                    Text("Windows", style: Heading5()),
                    Text(CalculateWindow().toString(), style: Heading5()),
                    Text(CalculateWindowCost().toString(), style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Doors", style: Heading5()),
                    Text(CalculateDoor().toString(), style: Heading5()),
                    Text(CalculateDoorCost().toString(), style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text(totalCostWD().toString(), style: Heading5Orange()),
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
                    Text("Colouring", style: Heading5()),
                    Text("all", style: Heading5()),
                    Text(calculateColouringCost().toString(),
                        style: Heading5()),
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
                    Text("Roof Decoration", style: Heading5()),
                    Text(CalculateRoofDecoration().toString(),
                        style: Heading5()),
                    Text(CalculateRoofDecorationCost().toString(),
                        style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Washroom", style: Heading5()),
                    Text(CalculateWashRoomDecoCost().toString(),
                        style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kitchen", style: Heading5()),
                    Text(CalculateKitchenDecoCost().toString(),
                        style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Others", style: Heading5()),
                    Text(otherDecoCost().toString(), style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text(totalDecoCost().toString(), style: Heading5Orange()),
                  ],
                ),
              ]),
            ),

            // ================ Total Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Total Cost",
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
                    Text("Total Cost", style: Heading5Orange()),
                    Text(totalEstimatedBugdet().toStringAsFixed(2),
                        style: Heading5Orange()),
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
    double BriksPerSqft = 6.55; // how many briks use in 1sq.ft area
    return (widget.rawData["coverdArea"] * BriksPerSqft);
  }

// ============== Calculate Total Briks Cost =================
  double calculateBriksCost() {
    double costPerBrik = 13; // cost of one briks
    return (calculateBriks() * costPerBrik);
  }

  // ============== Calculate Total cement bag =================
  double calculateCement() {
    double cementPerSqft = 0.5; // how many cement use in 1sq.ft area
    return (widget.rawData["coverdArea"] * cementPerSqft);
  }

// ============== Calculate Total cost of cement  =================
  double calculateCementCost() {
    double cementCostPerBag = 1095; // cost of one bag cement
    return (calculateCement() * cementCostPerBag);
  }

  // ============== Calculate Total sand in tons  =================
  double calculateSand() {
    double sandPerSqft = 1.8; // how many sand use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * sandPerSqft);
  }

// ============== Calculate Total sand cost =================
  double calculateSandCost() {
    double sandCostPerTon = 100; // cost of  sand in tons
    return (calculateSand() * sandCostPerTon);
  }

  // ============== Calculate Total Crush in tons  =================
  double calculateCrush() {
    double CrushPerSqft = 1.5; // how many Crush use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * CrushPerSqft);
  }

  // ============== Calculate Total Crush cost =================
  double calculateCrushCost() {
    double crushCostPerTon = 200; // cost of  Crush in tons
    return (calculateCrush() * crushCostPerTon);
  }

  // ============== Calculate Total Labour cost =================
  double calculateLabourCost() {
    double labourCostPersqft = 250; // cost of one Crush in tons
    return (widget.rawData["coverdArea"] * labourCostPersqft);
  }

//============== Foundation and Structure total Cost ===============
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
    double steelPerSqft = 0.00440; // how many steel use in 1sq.ft area in tons
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
    double labourCostPersqft = 350; // labour cost per sqft area
    return (floorArea() * labourCostPersqft);
  }

  //================================================================
  //========================= utilities ============================
  //================================================================

  double CalculatePlumbingCost() {
    int plumbingcostperfeet = 50;
    double plumbingcost = ((floorArea() / 1.3) * plumbingcostperfeet);
    return (plumbingcost);
  }

  double CalculateElectricityCost() {
    double elictercitycost = totalContructionCost() * (6.8 / 100);
    return (elictercitycost);
  }

  double CalculateGlassCost() {
    double glassCost =
        (widget.rawData['BedRooms'] + widget.rawData['LivingRooms'] + 0.5);
    int oneWindowGlass = 24 * 155;
    return (glassCost * oneWindowGlass);
  }

  double CalculateUtilitiesCost() {
    double totalUtilitiesCost = CalculateElectricityCost() +
        CalculatePlumbingCost() +
        CalculateGlassCost();
    return (totalUtilitiesCost);
  }

  //================================================================
  //======================== Doors & Windows =======================
  //================================================================

  int CalculateDoor() {
    int numOfDoors = (widget.rawData['BedRooms'] +
        widget.rawData['BathRooms'] +
        widget.rawData['DrawingRooms'] +
        widget.rawData['LivingRooms']);
    return numOfDoors;
  }

  double CalculateDoorCost() {
    double costPerDoor = 9000; //Avg cost per Door
    return (CalculateDoor() * costPerDoor);
  }

  int CalculateWindow() {
    int numOfDoors =
        (widget.rawData['BedRooms'] + widget.rawData['LivingRooms']);
    return (numOfDoors);
  }

  double CalculateWindowCost() {
    double costPerWindow = 1500; //Avg cost per Window
    return (CalculateWindow() * costPerWindow);
  }

  double totalCostWD() {
    double total = (CalculateWindowCost() + CalculateDoorCost());
    return (total);
  }

  // ==================== Total cost on colouring ===============

  double calculateColouringCost() {
    double colouringCostPersqft = 22; //cost per sqft with material
    double colouringCost = (widget.rawData["coverdArea"] + CalculateDoorCost());
    return (colouringCost);
  }

  // ==================== Total cost on decoration ===============

  int CalculateRoofDecoration() {
    int noOfRoofs = (widget.rawData['BedRooms'] +
        widget.rawData['DrawingRooms'] +
        widget.rawData['LivingRooms']);
    return noOfRoofs;
  }

  double CalculateRoofDecorationCost() {
    double costPerRoof = 250; //Avrg decoration cost per square feet
    return (CalculateRoofDecoration() * costPerRoof);
  }

  double CalculateWashRoomDecoCost() {
    double costPerWashRoom = 300; //Avrg decoration cost per square feet
    return (widget.rawData['BathRooms'] * costPerWashRoom);
  }

  double CalculateKitchenDecoCost() {
    double costPerBathroom = 2500; //Avrg decoration cost per square feet
    return (widget.rawData['Kitchens'] * costPerBathroom);
  }

  double otherDecoCost() {
    return ((10 / 100) * totalDecoCost());
  }

  double totalDecoCost() {
    double DecoTotal = (CalculateRoofDecorationCost() +
        CalculateWashRoomDecoCost() +
        CalculateKitchenDecoCost());
    return DecoTotal;
  }

  double totalEstimatedBugdet() {
    double totalBudget = foundationTotal() +
        calculateSteelCost() +
        calculateFloorCost() +
        CalculateUtilitiesCost() +
        totalCostWD() +
        calculateColouringCost() +
        totalDecoCost();

    return totalBudget;
  }
}

//  totalArea: 1.0
//  coverdArea: 1.0
//  BedRooms: 18
//  BathRooms: 8
//  Kitchens: 88
//  LivingRooms: 8
//  DrawingRooms: 5
