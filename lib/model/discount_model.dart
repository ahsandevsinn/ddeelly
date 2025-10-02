import 'package:ddeelly/core/imports/imports.dart';

class DiscountModel {
  final String text;

  DiscountModel({
    required this.text,
  });
}

final List<DiscountModel> discountList = [
  DiscountModel(
    text: "Up to 10%",
  ),
  DiscountModel(
    text: "Up to 20%",
  ),
  DiscountModel(
    text: "Up to 30%",
  ),
  DiscountModel(
    text: "Up to 40%",
  ),
];
