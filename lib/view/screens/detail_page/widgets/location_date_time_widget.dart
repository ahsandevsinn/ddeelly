import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/choose_location_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/custom_counter_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/select_date_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/selected_time_slot_widget.dart';

class LocationDateTimeWidget extends StatelessWidget {
  const LocationDateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
      color: AppColors.backgroundColorHome,
        borderRadius: BorderRadius.circular(10),
       
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: const Column(
          
          children: [
          ChooseLocationWidget(),
          Gap(10.0),
          SelectDateWidget(),
          Gap(10.0),

          TimeSlotSelector(),
          Gap(10.0),

          ReservationCounter(),
        
        ],),
      ),
    );
  }
}