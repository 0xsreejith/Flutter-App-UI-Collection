import 'package:flutter/material.dart';
import 'package:profile_page/utils/about.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int selectedIndex = 0;

  void changeSelectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 240, 255),
      body: Column(
        children: [
          // Profile Header
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 17, right: 17),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile Image
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/736x/b5/78/5a/b5785af39d097409d685d68c242c146a.jpg'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  // Profile Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "SREEJITH",
                          style:
                              TextStyle(fontSize: 30, color: Colors.grey[700]),
                        ),
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.black45),
                      ),
                      const Text(
                        'csreejithofficial@gmail.com',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      const Text(
                        'DOB',
                        style: TextStyle(color: Colors.black45),
                      ),
                      const Text(
                        'March,04,2005',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(color: Colors.black45),
                      ),
                      const Text(
                        'xyz house',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Tab Section
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 17, right: 17),
            child: Container(
              padding: const EdgeInsets.all(4),
              height: 30,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  builderItem(0, 'About'),
                  builderItem(1, 'Work'),
                  builderItem(2, 'Activity'),
                ],
              ),
            ),
          ),
          // Dynamic Content Section
         getContent()
        ],
      ),
    );
  }

  // Method to Build Each Tab Item
  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        changeSelectedItem(index);
      },
      child: Container(
        width: 85,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  } 

  // Method to Display Dynamic Content
  Widget getContent() {
    switch (selectedIndex) {
      case 0:
        return const About();
      case 1:
        return const Center(
          child: Text(
            'This is the Work section.',
            style: TextStyle(fontSize: 18),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            'This is the Activity section.',
            style: TextStyle(fontSize: 18),
          ),
        );
      default:
        return const Center(
          child: Text(
            'Select a section',
            style: TextStyle(fontSize: 18),
          ),
        );
    }
  }
}
