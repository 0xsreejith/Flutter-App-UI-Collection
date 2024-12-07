import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String iconPath;
  final String deviceName;
  final bool powerStatus;
  void Function(bool)? onChanged;
   SmartDeviceBox(
      {super.key,
      required this.iconPath,
      required this.deviceName,
      required this.powerStatus,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
            color:
            powerStatus? Colors.grey[800]:Colors.grey[400]
            
            , borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //icon
            Image.asset(
              iconPath,
              height: 50,
              color: powerStatus?Colors.white:Colors.black,
            ),
            const SizedBox(height: 20,),
            //name
            //power statuse
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(deviceName,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: powerStatus? Colors.white :Colors.black
                  ),),
                )),
                Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(
                      value: powerStatus,
                      onChanged: onChanged,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
