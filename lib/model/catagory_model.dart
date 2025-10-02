import 'package:ddeelly/core/imports/imports.dart';

class CatagoryModel {
  final String imagePath;
  final String text;
  final Color? color;

  CatagoryModel({
    required this.imagePath,
    required this.text,
    required this.color,    
  });
}

final List<CatagoryModel> catagoryList = [
  CatagoryModel(
    imagePath: AppImages.dinning,
    text: "Dinning",
    color: AppColors.catagoryColorOne,    
  ),
  CatagoryModel(
    imagePath: AppImages.saloon,
    text: "Saloon/Spa",
    color: AppColors.catagoryColorTwo,    

  ),
  CatagoryModel(
    imagePath: AppImages.ent,
    text: "Entertainment",
    color: AppColors.catagoryColorThree,    

  ),
  CatagoryModel(
    imagePath: AppImages.cleaning,
    text: "Cleaning",
    color: AppColors.catagoryColorFour,    

  ),
];
