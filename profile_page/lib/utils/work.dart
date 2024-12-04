import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '17',
                    style: TextStyle(fontSize: 28, color: Colors.black38),
                  ),
                  Text(
                    'PROJECTS',
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '95%',
                    style: TextStyle(fontSize: 28, color: Colors.black38),
                  ),
                  Text(
                    'SUCCESS RATE',textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
