import 'package:education_app_ui/model/catergory.dart';
import 'package:education_app_ui/themes/color.dart';
import 'package:flutter/material.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          HeaderPart(),
          const SizedBox(height: 10),
          CatergorySection(),
          // differen categories shows
          SizedBox(
            height: 580,
            child: GridView.builder(
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                ),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3), // Shadow color
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(2, 4), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              category.coverImage,
                              height: 100,
                            ),
                            SizedBox(height: 10),
                            Text(
                              category.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${category.noOfCourses} Courses",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CatergorySection extends StatelessWidget {
  const CatergorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Explore Categories",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: primaryColor1),
            ))
      ],
    );
  }
}

class HeaderPart extends StatelessWidget {
  const HeaderPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              colors: [primaryColor1, kprimaryLight]),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello\nGood Morning",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kprimaryLight),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Search your topic",
                labelStyle: TextStyle(color: Colors.black45),
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                isDense: true,
                suffixIcon: Icon(
                  Icons.mic,
                  color: primaryColor1,
                  size: 25,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black45,
                  size: 26,
                )),
          )
        ],
      ),
    );
  }
}
