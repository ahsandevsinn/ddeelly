import 'package:ddeelly/core/imports/imports.dart';

class Promo {
  final String title;
  final String subtitle;
  final String price;
  final String discount;
  final String image;

  Promo({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.discount,
    required this.image,
  });
}


final List<Promo> promos = [
  Promo(
    title: "Zheng He’s",
    subtitle: "Dinner",
    price: "Only AED 75",
    discount: "30% Off",
    image: AppImages.restP,
  ),
  Promo(
    title: "Seafood Delight",
    subtitle: "Lunch",
    price: "Only AED 50",
    discount: "25% Off",
    image: AppImages.restP,
  ),
  Promo(
    title: "Italian Fiesta",
    subtitle: "Dinner",
    price: "Only AED 90",
    discount: "40% Off",
    image: AppImages.restP,
  ),
];
