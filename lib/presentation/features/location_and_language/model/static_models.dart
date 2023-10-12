

import '../utils/app_imges.dart';

class LocationInfo {
  String locationName;
  double latitude;
  double longitude;

  LocationInfo({
    required this.locationName,
    required this.latitude,
    required this.longitude,
  });
}

List<LocationInfo> locations = [
  LocationInfo(
      locationName: 'Riyadh', latitude: 24.713552, longitude: 46.675297),
  LocationInfo(
      locationName: 'Jeddah', latitude: 21.485811, longitude: 39.192505),
  LocationInfo(
      locationName: 'Makkah', latitude: 21.389082, longitude: 39.857910),
  LocationInfo(
      locationName: 'Al Madina', latitude: 24.410400, longitude: 54.463749),
  LocationInfo(
      locationName: 'Dammam', latitude: 26.420683, longitude: 50.088795),
  LocationInfo(
      locationName: 'Al Khubar', latitude: 26.2833, longitude: 50.2000),
  LocationInfo(locationName: 'Tabuk', latitude: 28.3972, longitude: 36.5789),
];

class OrderItem {
  String itemType;
  String status;
  String merchantName;
  String merchantImg;
  String itemName;
  String itemImg;
  num price;
  String time;
  int quantity;
  num orderId;

  OrderItem({
    required this.itemType,
    required this.status,
    required this.merchantName,
    required this.merchantImg,
    required this.itemName,
    required this.itemImg,
    required this.price,
    required this.time,
    required this.quantity,
    required this.orderId,
  });
}

List<OrderItem> orders = [
  OrderItem(
      itemType: 'Food',
      status: 'Completed',
      merchantName: 'Subway',
      merchantImg: AppImages.subway,
      itemName: 'Harries Special',
      itemImg: AppImages.harriesSpecial,
      price: 35.25,
      time: '29 Jan, 12:30',
      quantity: 3,
      orderId: 162432),
  OrderItem(
      itemType: 'Drink',
      status: 'Completed',
      merchantName: 'McDonald',
      merchantImg: AppImages.mcdonald,
      itemName: 'Matabbaq',
      itemImg: AppImages.matabbaq,
      price: 40.15,
      time: '30 Jan, 12:30',
      quantity: 2,
      orderId: 242432),
  OrderItem(
      itemType: 'Drink',
      status: 'Canceled',
      merchantName: 'Starbucks',
      merchantImg: AppImages.starbucks,
      itemName: 'European Burger',
      itemImg: AppImages.europeanBurger,
      price: 10.20,
      time: '30 Jan, 12:30',
      quantity: 1,
      orderId: 240112),
];

class Favourite {
  String restaurantName;
  String restaurantImg;
  String itemName;
  String itemImg;
  num price;

  Favourite(
      {required this.itemName,
        required this.itemImg,
        required this.price,
        required this.restaurantName,
        required this.restaurantImg});
}

List<Favourite> favourites = [
  Favourite(
      itemName: 'Chicken Fry',
      itemImg: AppImages.chickenFry,
      price: 40,
      restaurantName: 'Rose Garden Restaurant',
      restaurantImg: AppImages.roseGardenRestaurant),
  Favourite(
      itemName: 'Baklava',
      itemImg: AppImages.baklava,
      price: 60,
      restaurantName: 'Cafenio Restaurant',
      restaurantImg: AppImages.roseGardenRestaurant2),
  Favourite(
      itemName: 'Matabbaq',
      itemImg: AppImages.matabbaq,
      price: 40,
      restaurantName: 'Cafenio Restaurant',
      restaurantImg: AppImages.roseGardenRestaurant),
  Favourite(
      itemName: 'Pizza',
      itemImg: AppImages.pizza,
      price: 74,
      restaurantName: 'Kabab Restaurant',
      restaurantImg: AppImages.roseGardenRestaurant2),
  Favourite(
      itemName: 'Burger Bistro',
      itemImg: AppImages.burgerBistro,
      price: 40,
      restaurantName: 'Rose Garden Restaurant',
      restaurantImg: AppImages.roseGardenRestaurant),
];
