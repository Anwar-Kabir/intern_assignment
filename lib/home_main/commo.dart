
final categoryList = [
  category(title: 'All', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Coffee', imageData: 'assets/images/categories/cupcake.png'),
  category(title: 'Drink', imageData: 'assets/images/categories/fast-food.png'),
  category(title: 'Fast Food', imageData: 'assets/images/categories/hamburger.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/nigiri.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/soda.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
  category(title: 'Cake', imageData: 'assets/images/categories/cup.png'),
];

final popularFoodList = [
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
  category(title: 'Burger', imageData: 'assets/images/popular_food_nearby/burger.png'),
  category(title: 'Pasta', imageData: 'assets/images/popular_food_nearby/pasta.png'),
];

final allRestaurants = [
  category(title: 'Burger', imageData: 'https://1000logos.net/wp-content/uploads/2017/03/symbol-McDonalds.jpg'),
  category(title: 'Starbuks', imageData: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLvkOc7z9rcLc9YF3lV33qkJ168p6k3ocYIQ&usqp=CAU'),
  category(title: 'Dominos', imageData: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRsIk6vcmZW7cRn6FjtG6yxN6D2vd0JsU51YQEsyAUyMM6yUstfakPIdVlgxN6UsjRSEE&usqp=CAU'),
];

class category{
  String? title;
  String? imageData;

  category({this.title, this.imageData});
}