import 'package:flutter/material.dart';

class HappinessScore extends StatelessWidget {
  const HappinessScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Positioned(
              top: -360,
              left: -350,
              right: -350,
              child: CircleAvatar(
                radius: 350,
                backgroundColor: Color(0xfff2f3f4),
              )),
          Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your Happiness Score',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '2132',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text:
                              'Congratulations! Your happiness score  is very high',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyContainer(
                        icon: Icons.timer_outlined,
                        label: "32",
                        subLabel: "Session/week",
                      ),
                      MyContainer(
                        icon: Icons.trending_down,
                        label: "Low",
                        subLabel: "Stress Level",
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
              left: 0,
              top: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Recommanded for you',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Basic Meditation',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Course',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('15 mins Daily')
                            ],
                          ),
                          //image
                          Image.network(
                            'https://img.freepik.com/free-vector/man-lotus-position_24908-82498.jpg?t=st=1733471502~exp=1733475102~hmac=8d17d568c4d4968897b7cb533ed5eacef8511519d725d069e71a7d64a5092400&w=740',
                            height: 100,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subLabel;
  const MyContainer(
      {super.key,
      required this.icon,
      required this.label,
      required this.subLabel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(subLabel),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
