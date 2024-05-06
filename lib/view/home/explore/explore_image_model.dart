class ExploreImageModel {
  final String imagePath;
  final String restaurantName;

  ExploreImageModel({required this.imagePath, required this.restaurantName});
}

List<ExploreImageModel> explore = [
  ["assets/explore/dominos.png", "Dominos Pizza"],
  ["assets/explore/goodstuff.png", "tastethegoodstuff"],
  ["assets/explore/kfc.png", "KFC"],
  ["assets/explore/chicken_republic.png", "Chicken Republic"],
  ["assets/explore/mcdonalds.png", "McDonald"],
]
    .map((exp) => ExploreImageModel(imagePath: exp[0], restaurantName: exp[1]))
    .toList();
