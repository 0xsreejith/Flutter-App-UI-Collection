// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("BIO"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                      "I am a Flutter developer and ethical hacking enthusiast with experience in building apps and exploring cybersecurity through bug bounty programs"),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 350,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('SOCIAL'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      child: Icon(FontAwesomeIcons.facebookF),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      child: Icon(FontAwesomeIcons.instagram),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      child: Icon(FontAwesomeIcons.linkedinIn),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[600],
                      child: Icon(FontAwesomeIcons.twitter),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('WEBSITE'),
                      Spacer(),
                      Text('https://sreejith-portfolio.web.app/')
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('PHONE'),
                      Spacer(),
                      Text('+91 9946335695')
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
