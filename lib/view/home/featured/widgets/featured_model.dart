class FeaturedRestaurant {
  final String restaurantName;
  final String restaurantImage;
  final String price;
  final String status;
  final double rating;
  final int noOfRatings;

  FeaturedRestaurant(
      {required this.restaurantName,
      required this.restaurantImage,
      required this.price,
      required this.status,
      required this.rating,
      required this.noOfRatings});
}

List<FeaturedRestaurant> featuredRestaurants = [
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "2000",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "2000",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "2000",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "2000",
    status: "Closed",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "4000",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "300",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "210",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
  FeaturedRestaurant(
    restaurantImage: "assets/images/displayImg.jpeg",
    restaurantName: "Mr Biggs",
    price: "2000",
    status: "Open",
    rating: 3.4,
    noOfRatings: 221,
  ),
];
