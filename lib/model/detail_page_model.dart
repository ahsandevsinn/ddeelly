import 'package:ddeelly/core/constants/app_images.dart';

class DetailPageModel {
  final String image;
  DetailPageModel({required this.image});
  
}

List<DetailPageModel> detailPageList = [
  DetailPageModel(image: AppImages.food),
  DetailPageModel(image: AppImages.foodTwo),
  DetailPageModel(image: AppImages.foodThree),
  DetailPageModel(image: AppImages.foodFour),  
];