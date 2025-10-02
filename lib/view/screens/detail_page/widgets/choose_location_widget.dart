import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/utils/drop_down_widget.dart';
import 'package:ddeelly/viewmodel/detail_page_view_model.dart';

class ChooseLocationWidget extends StatefulWidget {
  const ChooseLocationWidget({super.key});

  @override
  State<ChooseLocationWidget> createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
            text: AppStrings.chooseLocation,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.mediumGrey),
        const Gap(10.0),
      Consumer<DetailPageViewModel>(
         builder: (context,detailPageViewModel,child) {
           return CustomDropdown<String>(
              items: detailPageViewModel.countries,
              value: detailPageViewModel.selectedValue,
              display: (item) => item,
              hint: "Palm Jumeirah",
              onChanged: (value) {
              detailPageViewModel.selectedDropDownValue(value);
              },
            );
         }
       ),

      ],
    );
  }
}

