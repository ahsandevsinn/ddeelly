import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/model/detail_page_model.dart';
import 'package:ddeelly/utils/custom_button.dart';

class DetailPageHeaderWidget extends StatefulWidget {
  const DetailPageHeaderWidget({super.key});

  @override
  State<DetailPageHeaderWidget> createState() => _DetailPageHeaderWidgetState();
}

class _DetailPageHeaderWidgetState extends State<DetailPageHeaderWidget> {
  String selectedImage = detailPageList.first.image;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(selectedImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding:  EdgeInsets.only(left: 10,right: 10.0,top: height * 0.05),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                Icon(Icons.favorite, color: AppColors.red, size: 40),
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: detailPageList.length,
              itemBuilder: (context, index) {
                final item = detailPageList[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = item.image;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainerImage(
                      imagePath: item.image,
                      isSelected: selectedImage == item.image,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainerImage extends StatelessWidget {
  final String imagePath;
  final bool isSelected;

  const CustomContainerImage({
    super.key,
    required this.imagePath,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.red : AppColors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
