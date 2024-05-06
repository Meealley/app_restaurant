class CategoryImageModel {
  final String imagePath;
  final String categoryName;

  CategoryImageModel({required this.imagePath, required this.categoryName});
}

List<CategoryImageModel> categories = [
  ['assets/categories/alcohol.png', 'Alcohol'],
  ['assets/categories/american.png', 'American'],
  ['assets/categories/asian.png', 'Asian'],
  ['assets/categories/carrebian.png', 'Caribbean'],
  ['assets/categories/chinese.png', 'Chinese'],
  ['assets/categories/convenience.png', 'Cabbage'],
  ['assets/categories/dessert.png', 'Dessert'],
  ['assets/categories/fastFood.png', 'Fast Food'],
  ['assets/categories/flower.png', 'Flower'],
  ['assets/categories/french.png', 'French'],
  ['assets/categories/grocery.png', 'Grocery'],
  ['assets/categories/halal.png', 'Halal'],
  ['assets/categories/icecream.png', 'Icecream'],
  ['assets/categories/indian.png', 'Indian'],
  ['assets/categories/petSupplies.png', 'Pet Supplies'],
  ['assets/categories/retails.png', 'Retails'],
  ['assets/categories/ride.png', 'Ride'],
  ['assets/categories/takeout.png', 'Takeout'],
]
    .map((category) => CategoryImageModel(
          imagePath: category[0],
          categoryName: category[1],
        ))
    .toList();
