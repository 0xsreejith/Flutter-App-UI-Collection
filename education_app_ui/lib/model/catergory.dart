class Category {
  String coverImage;
  String name;
  int noOfCourses;

  Category({
    required this.coverImage,
    required this.name,
    required this.noOfCourses,
  });
}

List<Category> categoryList = [
  Category(
    coverImage: "https://api.reliasoftware.com/uploads/the_complete_guide_to_mobile_app_development_2021_ded2abd1b1.png", 
    name: "App Development",
    noOfCourses: 10,
  ),
  Category(
    coverImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl64vFmRKbWigk2KAVXgJFj0DKJwXwRPxIPw&s", 
    name: "Web Development",
    noOfCourses: 12,
  ),
  Category(
    coverImage: "https://www.nullplex.com/uploads/blogs/coverimages/fad4b53c-9630-48ab-bcbf-2a9b3c536119-20240130071903.png", 
    name: "UI/UX Design",
    noOfCourses: 8,
  ),
  Category(
    coverImage: "https://www.neit.edu/wp-content/uploads/2022/10/Cyber-Security-Icon-Concept-2-1.jpeg", 
    name: "Cyber Security",
    noOfCourses: 7,
  ),
];
