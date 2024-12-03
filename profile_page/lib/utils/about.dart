import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 130,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("BIO"),
              ),
                     Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("I am a Flutter developer and ethical hacking enthusiast with experience in building apps and exploring cybersecurity through bug bounty programs"),
              ),
            ],
          ),
          ),
          
        )
      ],
    );
  }
}
