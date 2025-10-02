import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/model/partners_model.dart'; 

class PartnersWidget extends StatelessWidget {
  final String image;
  const PartnersWidget({super.key,required this.image });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyColor)
      ),
      child: Center(child: Image.asset(image,height: 30,)),
    );
  }
}

class PartnersGrid extends StatelessWidget {
  const PartnersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: partners.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2, 
        ),
        itemBuilder: (context, index) {
          return PartnersWidget(image: partners[index].image);
        },
      ),
    );
  }
}
