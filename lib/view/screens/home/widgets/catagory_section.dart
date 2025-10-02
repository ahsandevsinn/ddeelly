import 'package:ddeelly/core/imports/imports.dart';



class CatagorySection extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? color; 

  const CatagorySection({super.key, required this.imagePath, required this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: color,
            child: Image.asset(
               fit: BoxFit.contain,
              imagePath, width: 46, height: 46),
          ),
         Gap(10.0),
        AppText(text: text,fontWeight: FontWeight.w400,fontSize: 12,)
        ],
      ),
    );
  }
}