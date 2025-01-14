// import 'package:dashboard/util/smart_device_box.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final double horizontalPadding = 40;
//   final double verticalPadding = 25;
//   List mySmartDevices = [
//     ["Smart Light", "images/bulb.png", true],
//     ["Smart AC", "images/ac.png", true],
//     ["Smart TV", "images/tv.png", true],
//     ["Smart Fan", "images/fan.png", true]
//   ];
//
//   void powerSwitchChanged(bool value, int index){
//     setState(() {
//       mySmartDevices[index][2] = value;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: horizontalPadding, vertical: verticalPadding),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset(
//                     'images/menu.png',
//                     height: 45,
//                     color: Colors.grey[800],
//                   ),
//                   Icon(
//                     Icons.person,
//                     size: 45,
//                     color: Colors.grey[900],
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: horizontalPadding,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                    Text(
//                     "Welcome Home",
//                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
//                   ),
//                   Text(
//                     "SHRISH SINHA",
//                     style: GoogleFonts.bebasNeue(
//                       fontSize: 40
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//
//             const SizedBox(
//               height: 25,
//             ),
//
//             Padding(
//               padding:  EdgeInsets.symmetric(horizontal: horizontalPadding),
//               child: Divider(
//                 color: Colors.grey[400],
//                 thickness: 1,
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//               child: Text("Smart Devices",
//               style: TextStyle(fontWeight: FontWeight.bold,
//               fontSize: 22,
//               color: Colors.black),
//               ),
//             ),
//             Expanded(
//
//                 child: GridView.builder(
//                   itemCount: mySmartDevices.length,
//                     physics: const NeverScrollableScrollPhysics(),
//
//                     padding: const EdgeInsets.all(20.0),
//
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 1/1.3
//                   ),
//                   itemBuilder: (context, index) {
//                     return SmartDeviceBox(
//                       smartDeviceName: mySmartDevices[index][0],
//                       iconPath: mySmartDevices[index][1],
//                       powerOn: mySmartDevices[index][2],
//                       onChanged: (value) => powerSwitchChanged(value, index),
//
//                     );
//                   },
//                 ),
//               ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:dashboard/util/smart_device_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  List mySmartDevices = [
    ["Smart Light", "images/bulb.png", true],
    ["Smart AC", "images/ac.png", true],
    ["Smart TV", "images/tv.png", true],
    ["Smart Fan", "images/fan.png", true]
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: InkWell(
        onTap: () {},
        splashColor: Colors.blue.withAlpha(30),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/menu.png',
                      height: 45,
                      color: Colors.grey[800],
                    ),
                    Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.grey[900],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Home",
                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    ),
                    Text(
                      "SHREYA SINHA",
                      style: GoogleFonts.bebasNeue(fontSize: 40),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: const Text(
                  "Smart Devices",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: mySmartDevices.length,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return SmartDeviceBox(
                      smartDeviceName: mySmartDevices[index][0],
                      iconPath: mySmartDevices[index][1],
                      powerOn: mySmartDevices[index][2],
                      onChanged: (value) => powerSwitchChanged(value, index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
