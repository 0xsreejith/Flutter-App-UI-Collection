import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/util/smart_device_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // devices
  List mySmartDevices = [
    ["lib/images/lightbulb.png", "Smart Light", false],
    ["lib/images/ac.png", "Smart AC", false],
    ["lib/images/fan.png", "Smart FAN", false],
    ["lib/images/smart-tv.png", "Smart TV", false],
  ];

  //power toggle
  void powerToggle(bool power, int index) {
    setState(() {
      mySmartDevices[index][2]=power;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom app bar
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu icon
                Image.asset(
                  'lib/images/menu.png',
                  height: 40,
                  color: Colors.grey[800],
                ),
                Image.asset(
                  'lib/images/user.png',
                  height: 35,
                  color: Colors.grey[800],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Welcome text
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Home,",style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                Text(
                  "Sreejith",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50
                  ),
                ),
              ],
            ),
          ),
          // Smart Devices heading
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Text("Smart Devices"),
          ),
          // Devices Grid
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(25),
              itemCount: mySmartDevices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.3),
              itemBuilder: (context, index) {
                return SmartDeviceBox(
                  iconPath: mySmartDevices[index][0],
                  deviceName: mySmartDevices[index][1],
                  powerStatus: mySmartDevices[index][2],
                  onChanged: (value) => powerToggle(value, index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
