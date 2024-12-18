import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_ui/screens/happiness_score.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 204, 253, 229)),
          ),
          const Positioned(
              top: 80,
              left: -300,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.orange,
              )),
          const Positioned(
              top: 80,
              left: -340,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Color.fromARGB(255, 204, 253, 229),
              )),
          const Positioned(
              top: 80,
              right: -300,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.orange,
              )),
          const Positioned(
              top: 80,
              right: -340,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Color.fromARGB(255, 204, 253, 229),
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 180,
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Good ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'Job!',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 30))
                    ])),
          ),
          Positioned(
              top: 340,
              right: 10,
              child: Image.network(
                  'https://widgetwisdom.com/wp-content/uploads/2024/12/Cloud-Icons.png')),
          Positioned(
              top: 10,
              left: -10,
              child: Image.network(
                  'https://widgetwisdom.com/wp-content/uploads/2024/12/Cloud-Icons.png')),
          const MyCard(
            hight: 250,
            label: 'Breathe ',
            subLabel: '12 ',
            icon: Icons.air,
          ),
          const MyCard(
            hight: 310,
            label: 'Time ',
            subLabel: '2.35 ',
            icon: Icons.timer,
          ),
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 100,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      offset: const Offset(0, -5), // Negative Y offset for top shadow
                      blurRadius: 10, // Blur radius
                      spreadRadius: 2, // Spread radius
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                          child: Text(
                        "Are you happy with this session?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyStatus(
                          imagePath:
                              'https://widgetwisdom.com/wp-content/uploads/2024/12/happy.png',
                          label: 'Little',
                        ),
                        MyStatus(
                          imagePath:
                              'https://widgetwisdom.com/wp-content/uploads/2024/12/sad.png',
                          label: 'No',
                        ),
                        MyStatus(
                          imagePath:
                              'https://widgetwisdom.com/wp-content/uploads/2024/12/v_happy.png',
                          label: 'Very',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyStatus extends StatelessWidget {
  final String imagePath;
  final String label;
  const MyStatus({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: (){  
          Get.to(const HappinessScore());
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade500)),
          child: Column(
            children: [
              //imoji
              Image.network(imagePath, height: 40),
              //text
              Text(label)
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String label;
  final String subLabel;
  final IconData icon;
  final double hight;
  const MyCard(
      {super.key,
      required this.label,
      required this.subLabel,
      required this.icon,
      required this.hight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        top: hight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(12)),
            width: 50,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      subLabel,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
